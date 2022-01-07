; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_read_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_read_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rptr = common dso_local global i8* null, align 8
@rend = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_int() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @rptr, align 8
  %4 = load i8*, i8** @rend, align 8
  %5 = icmp eq i8* %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = call i32 (...) @advance_buff()
  %8 = load i8*, i8** @rptr, align 8
  %9 = load i8*, i8** @rend, align 8
  %10 = icmp ne i8* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  br label %13

13:                                               ; preds = %6, %0
  br label %14

14:                                               ; preds = %44, %13
  %15 = load i8*, i8** @rptr, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp slt i32 %17, 48
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** @rptr, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sgt i32 %22, 57
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %14
  %25 = load i8*, i8** @rptr, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 45
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %45

31:                                               ; preds = %29
  %32 = load i8*, i8** @rptr, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** @rptr, align 8
  %34 = load i8*, i8** @rptr, align 8
  %35 = load i8*, i8** @rend, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = call i32 (...) @advance_buff()
  %39 = load i8*, i8** @rptr, align 8
  %40 = load i8*, i8** @rend, align 8
  %41 = icmp ne i8* %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  br label %44

44:                                               ; preds = %37, %31
  br label %14

45:                                               ; preds = %29
  %46 = load i8*, i8** @rptr, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 20
  %48 = load i8*, i8** @rend, align 8
  %49 = icmp ugt i8* %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (...) @advance_buff()
  br label %52

52:                                               ; preds = %50, %45
  store i32 1, i32* %1, align 4
  br label %53

53:                                               ; preds = %58, %52
  %54 = load i8*, i8** @rptr, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 45
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* %1, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %1, align 4
  %61 = load i8*, i8** @rptr, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** @rptr, align 8
  br label %53

63:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i8*, i8** @rptr, align 8
  %66 = load i8*, i8** @rend, align 8
  %67 = icmp ult i8* %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i8*, i8** @rptr, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sge i32 %71, 48
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** @rptr, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sle i32 %76, 57
  br label %78

78:                                               ; preds = %73, %68, %64
  %79 = phi i1 [ false, %68 ], [ false, %64 ], [ %77, %73 ]
  br i1 %79, label %80, label %90

80:                                               ; preds = %78
  %81 = load i32, i32* %2, align 4
  %82 = mul nsw i32 %81, 10
  %83 = load i8*, i8** @rptr, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = add nsw i32 %82, %85
  %87 = sub nsw i32 %86, 48
  store i32 %87, i32* %2, align 4
  %88 = load i8*, i8** @rptr, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** @rptr, align 8
  br label %64

90:                                               ; preds = %78
  %91 = load i32, i32* %1, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %2, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @advance_buff(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
