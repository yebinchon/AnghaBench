; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_ugecon.c_ug_grab_exi_io_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_ugecon.c_ug_grab_exi_io_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"nintendo,flipper-exi\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"virtual-reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @ug_grab_exi_io_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ug_grab_exi_io_base() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = call i8* @find_node_by_compatible(i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %17

8:                                                ; preds = %0
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @getprop(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64* %2, i32 8)
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %17

14:                                               ; preds = %8
  %15 = load i64, i64* %2, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %1, align 8
  br label %18

17:                                               ; preds = %13, %7
  store i8* null, i8** %1, align 8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i8*, i8** %1, align 8
  ret i8* %19
}

declare dso_local i8* @find_node_by_compatible(i32*, i8*) #1

declare dso_local i32 @getprop(i8*, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
