; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_misc.c_BG_NewString.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_misc.c_BG_NewString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bg_buffer_idx = common dso_local global i32 0, align 4
@BG_BUFFERSIZE = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to Allocate new string!\00", align 1
@bg_string_buffer = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BG_NewString(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @bg_buffer_idx, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @BG_BUFFERSIZE, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ERR_DROP, align 4
  %15 = call i32 @Com_Error(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i8*, i8** @bg_string_buffer, align 8
  %18 = load i32, i32* @bg_buffer_idx, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @Com_Memcpy(i8* %21, i8* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @bg_buffer_idx, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* @bg_buffer_idx, align 4
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Com_Memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
