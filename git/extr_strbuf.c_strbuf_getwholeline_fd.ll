; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_getwholeline_fd.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_getwholeline_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strbuf_getwholeline_fd(%struct.strbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %11 = call i32 @strbuf_reset(%struct.strbuf* %10)
  br label %12

12:                                               ; preds = %3, %28
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @xread(i32 %13, i8* %8, i32 1)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @EOF, align 4
  store i32 %18, i32* %4, align 4
  br label %30

19:                                               ; preds = %12
  %20 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %21 = load i8, i8* %8, align 1
  %22 = call i32 @strbuf_addch(%struct.strbuf* %20, i8 signext %21)
  %23 = load i8, i8* %8, align 1
  %24 = sext i8 %23 to i32
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %29

28:                                               ; preds = %19
  br label %12

29:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i64 @xread(i32, i8*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
