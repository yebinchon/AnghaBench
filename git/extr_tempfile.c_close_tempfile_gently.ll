; ModuleID = '/home/carl/AnghaBench/git/extr_tempfile.c_close_tempfile_gently.c'
source_filename = "/home/carl/AnghaBench/git/extr_tempfile.c_close_tempfile_gently.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tempfile = type { i32, i32* }

@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_tempfile_gently(%struct.tempfile* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tempfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.tempfile* %0, %struct.tempfile** %3, align 8
  %7 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %8 = call i32 @is_tempfile_active(%struct.tempfile* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %12 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %52

16:                                               ; preds = %10
  %17 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %18 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  %20 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %21 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %24 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %16
  %28 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %29 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @ferror(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @fclose(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @EIO, align 4
  store i32 %38, i32* @errno, align 4
  br label %39

39:                                               ; preds = %37, %33
  br label %43

40:                                               ; preds = %27
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @fclose(i32* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %39
  br label %47

44:                                               ; preds = %16
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @close(i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 -1, i32 0
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @is_tempfile_active(%struct.tempfile*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
