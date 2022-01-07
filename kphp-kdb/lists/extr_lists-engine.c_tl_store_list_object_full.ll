; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_store_list_object_full.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_store_list_object_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@object_id_ints = common dso_local global i32 0, align 4
@VALUE_INTS = common dso_local global i32 0, align 4
@PTR_INTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_store_list_object_full(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %101, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %104

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 32768
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = load i32, i32* @object_id_ints, align 4
  %26 = mul nsw i32 4, %25
  %27 = call i32 @tl_store_string_data(i8* %24, i32 %26)
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i32, i32* @object_id_ints, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %9, align 8
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 64
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  %39 = load i32, i32* %37, align 4
  %40 = call i32 @tl_store_int(i32 %39)
  br label %41

41:                                               ; preds = %36, %28
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %9, align 8
  %48 = load i32, i32* %46, align 4
  %49 = call i32 @tl_store_int(i32 %48)
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 256
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @tl_store_long(i32 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %9, align 8
  br label %60

60:                                               ; preds = %54, %50
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 512
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = load i32, i32* @VALUE_INTS, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32*, i32** %9, align 8
  %69 = bitcast i32* %68 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @tl_store_long(i32 %71)
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32* %74, i32** %9, align 8
  br label %81

75:                                               ; preds = %64
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @tl_store_long(i32 %77)
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %9, align 8
  br label %81

81:                                               ; preds = %75, %67
  br label %82

82:                                               ; preds = %81, %60
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 1024
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i32*, i32** %9, align 8
  %88 = bitcast i32* %87 to i8**
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %11, align 8
  %90 = load i32, i32* @PTR_INTS, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %9, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %9, align 8
  %96 = load i32, i32* %94, align 4
  store i32 %96, i32* %12, align 4
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @tl_store_string(i8* %97, i32 %98)
  br label %100

100:                                              ; preds = %86, %82
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %14

104:                                              ; preds = %14
  ret void
}

declare dso_local i32 @tl_store_string_data(i8*, i32) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @tl_store_long(i32) #1

declare dso_local i32 @tl_store_string(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
