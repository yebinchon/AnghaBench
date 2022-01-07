; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options-cb.c_parse_options_concat.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options-cb.c_parse_options_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64 }

@OPTION_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.option* @parse_options_concat(%struct.option* %0, %struct.option* %1) #0 {
  %3 = alloca %struct.option*, align 8
  %4 = alloca %struct.option*, align 8
  %5 = alloca %struct.option*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.option* %0, %struct.option** %3, align 8
  store %struct.option* %1, %struct.option** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %20, %2
  %10 = load %struct.option*, %struct.option** %3, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.option, %struct.option* %10, i64 %11
  %13 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OPTION_END, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %6, align 8
  br label %9

23:                                               ; preds = %9
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %35, %23
  %25 = load %struct.option*, %struct.option** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.option, %struct.option* %25, i64 %26
  %28 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OPTION_END, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %24

38:                                               ; preds = %24
  %39 = load %struct.option*, %struct.option** %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @st_add3(i64 %40, i64 %41, i32 1)
  %43 = call i32 @ALLOC_ARRAY(%struct.option* %39, i32 %42)
  store i64 0, i64* %6, align 8
  br label %44

44:                                               ; preds = %57, %38
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.option*, %struct.option** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.option, %struct.option* %49, i64 %50
  %52 = load %struct.option*, %struct.option** %3, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.option, %struct.option* %52, i64 %53
  %55 = bitcast %struct.option* %51 to i8*
  %56 = bitcast %struct.option* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  br label %57

57:                                               ; preds = %48
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %44

60:                                               ; preds = %44
  store i64 0, i64* %6, align 8
  br label %61

61:                                               ; preds = %76, %60
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load %struct.option*, %struct.option** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %67, %68
  %70 = getelementptr inbounds %struct.option, %struct.option* %66, i64 %69
  %71 = load %struct.option*, %struct.option** %4, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds %struct.option, %struct.option* %71, i64 %72
  %74 = bitcast %struct.option* %70 to i8*
  %75 = bitcast %struct.option* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 8, i1 false)
  br label %76

76:                                               ; preds = %65
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %61

79:                                               ; preds = %61
  %80 = load %struct.option*, %struct.option** %5, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %81, %82
  %84 = getelementptr inbounds %struct.option, %struct.option* %80, i64 %83
  %85 = load %struct.option*, %struct.option** %4, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.option, %struct.option* %85, i64 %86
  %88 = bitcast %struct.option* %84 to i8*
  %89 = bitcast %struct.option* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 8, i1 false)
  %90 = load %struct.option*, %struct.option** %5, align 8
  ret %struct.option* %90
}

declare dso_local i32 @ALLOC_ARRAY(%struct.option*, i32) #1

declare dso_local i32 @st_add3(i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
