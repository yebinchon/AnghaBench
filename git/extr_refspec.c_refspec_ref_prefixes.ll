; ModuleID = '/home/carl/AnghaBench/git/extr_refspec.c_refspec_ref_prefixes.c'
source_filename = "/home/carl/AnghaBench/git/extr_refspec.c_refspec_ref_prefixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec = type { i32, i64, %struct.refspec_item* }
%struct.refspec_item = type { i8*, i8*, i64, i64 }
%struct.argv_array = type { i32 }

@REFSPEC_FETCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @refspec_ref_prefixes(%struct.refspec* %0, %struct.argv_array* %1) #0 {
  %3 = alloca %struct.refspec*, align 8
  %4 = alloca %struct.argv_array*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.refspec_item*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.refspec* %0, %struct.refspec** %3, align 8
  store %struct.argv_array* %1, %struct.argv_array** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %88, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.refspec*, %struct.refspec** %3, align 8
  %12 = getelementptr inbounds %struct.refspec, %struct.refspec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %91

15:                                               ; preds = %9
  %16 = load %struct.refspec*, %struct.refspec** %3, align 8
  %17 = getelementptr inbounds %struct.refspec, %struct.refspec* %16, i32 0, i32 2
  %18 = load %struct.refspec_item*, %struct.refspec_item** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %18, i64 %20
  store %struct.refspec_item* %21, %struct.refspec_item** %6, align 8
  store i8* null, i8** %7, align 8
  %22 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %23 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %88

27:                                               ; preds = %15
  %28 = load %struct.refspec*, %struct.refspec** %3, align 8
  %29 = getelementptr inbounds %struct.refspec, %struct.refspec* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REFSPEC_FETCH, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %35 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %7, align 8
  br label %62

37:                                               ; preds = %27
  %38 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %39 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %44 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %7, align 8
  br label %61

46:                                               ; preds = %37
  %47 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %48 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %53 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %58 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %7, align 8
  br label %60

60:                                               ; preds = %56, %51, %46
  br label %61

61:                                               ; preds = %60, %42
  br label %62

62:                                               ; preds = %61, %33
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load %struct.refspec_item*, %struct.refspec_item** %6, align 8
  %67 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 42)
  store i8* %72, i8** %8, align 8
  %73 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @argv_array_pushf(%struct.argv_array* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %79, i8* %80)
  br label %86

82:                                               ; preds = %65
  %83 = load %struct.argv_array*, %struct.argv_array** %4, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @expand_ref_prefix(%struct.argv_array* %83, i8* %84)
  br label %86

86:                                               ; preds = %82, %70
  br label %87

87:                                               ; preds = %86, %62
  br label %88

88:                                               ; preds = %87, %26
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %9

91:                                               ; preds = %9
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i32, i8*) #1

declare dso_local i32 @expand_ref_prefix(%struct.argv_array*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
