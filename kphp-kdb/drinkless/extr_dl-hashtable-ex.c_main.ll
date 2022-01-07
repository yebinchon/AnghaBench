; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-hashtable-ex.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-hashtable-ex.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@h = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%lld%d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%d vs %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [50 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %12 = call i32 @shmap_ll_int_init(i32* @h)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %88, %0
  %14 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %90

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = srem i32 %20, 1000
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %17
  %28 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %29 = load i8, i8* %28, align 16
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 115
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %4, i32* %5)
  %34 = load i32, i32* %4, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = bitcast %struct.TYPE_7__* %6 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = call %struct.TYPE_8__* @shmap_ll_int_add(i32* @h, i64 %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  br label %88

41:                                               ; preds = %27
  %42 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 100
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %4)
  %48 = load i32, i32* %4, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = bitcast %struct.TYPE_7__* %7 to i64*
  %51 = load i64, i64* %50, align 4
  %52 = call i32 @shmap_ll_int_del(i32* @h, i64 %51)
  br label %87

53:                                               ; preds = %41
  %54 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %55 = load i8, i8* %54, align 16
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 103
  br i1 %57, label %58, label %86

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %4, i32* %5)
  %60 = load i32, i32* %4, align 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = bitcast %struct.TYPE_7__* %8 to i64*
  %63 = load i64, i64* %62, align 4
  %64 = call %struct.TYPE_7__* @shmap_ll_int_get(i32* @h, i64 %63)
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %9, align 8
  store i32 -1, i32* %10, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = icmp ne %struct.TYPE_7__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %58
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* @stderr, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %71
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %86

86:                                               ; preds = %80, %53
  br label %87

87:                                               ; preds = %86, %46
  br label %88

88:                                               ; preds = %87, %32
  %89 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %11)
  br label %13

90:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @shmap_ll_int_init(i32*) #1

declare dso_local i32 @scanf(i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local %struct.TYPE_8__* @shmap_ll_int_add(i32*, i64) #1

declare dso_local i32 @shmap_ll_int_del(i32*, i64) #1

declare dso_local %struct.TYPE_7__* @shmap_ll_int_get(i32*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
