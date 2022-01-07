; ModuleID = '/home/carl/AnghaBench/git/extr_tempfile.c_fdopen_tempfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_tempfile.c_fdopen_tempfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tempfile = type { i32*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"fdopen_tempfile() called for inactive object\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"fdopen_tempfile() called for open object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fdopen_tempfile(%struct.tempfile* %0, i8* %1) #0 {
  %3 = alloca %struct.tempfile*, align 8
  %4 = alloca i8*, align 8
  store %struct.tempfile* %0, %struct.tempfile** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %6 = call i32 @is_tempfile_active(%struct.tempfile* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 @BUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %12 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @BUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %19 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32* @fdopen(i32 %20, i8* %21)
  %23 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %24 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %26 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  ret i32* %27
}

declare dso_local i32 @is_tempfile_active(%struct.tempfile*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
