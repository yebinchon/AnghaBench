; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options-cb.c_parse_opt_abbrev_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options-cb.c_parse_opt_abbrev_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.option = type { i64, i32 }

@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"option `%s' expects a numerical value\00", align 1
@MINIMUM_ABBREV = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_abbrev_cb(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @DEFAULT_ABBREV, align 4
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ 0, %14 ], [ %16, %15 ]
  store i32 %18, i32* %8, align 4
  br label %62

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.option*, %struct.option** %5, align 8
  %26 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @error(i32 %24, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %68

29:                                               ; preds = %19
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strtol(i8* %30, i8** %6, i32 10)
  store i32 %31, i32* %8, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.option*, %struct.option** %5, align 8
  %38 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @error(i32 %36, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %68

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MINIMUM_ABBREV, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @MINIMUM_ABBREV, align 4
  store i32 %49, i32* %8, align 4
  br label %61

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56, %50
  br label %61

61:                                               ; preds = %60, %48
  br label %62

62:                                               ; preds = %61, %17
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.option*, %struct.option** %5, align 8
  %65 = getelementptr inbounds %struct.option, %struct.option* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  store i32 %63, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %62, %35, %23
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
