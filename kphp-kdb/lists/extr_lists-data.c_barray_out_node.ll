; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_barray_out_node.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_barray_out_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_mode = common dso_local global i32 0, align 4
@R_end = common dso_local global i32* null, align 8
@R = common dso_local global i32* null, align 8
@MAX_RES = common dso_local global i32 0, align 4
@M_obj_id_list = common dso_local global i32 0, align 4
@M_global_id_list = common dso_local global i32* null, align 8
@PTR_INTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @barray_out_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @barray_out_node(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @R_mode, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32*, i32** @R_end, align 8
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** @R_end, align 8
  %11 = load i32*, i32** @R, align 8
  %12 = load i32, i32* @MAX_RES, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = icmp ult i32* %10, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @M_obj_id_list, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @OARR_ENTRY(i32 %18, i32 %19)
  %21 = call i32 @store_object_id(i32** %6, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 64
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @metafile_get_flags(i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %30

30:                                               ; preds = %25, %2
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 128
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @metafile_get_date(i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 256
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32*, i32** @M_global_id_list, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %51

51:                                               ; preds = %43, %39
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 512
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @metafile_get_value(i32 %56)
  %58 = call i32 @store_value(i32** %6, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 1024
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = call i8* @metafile_get_text(i32 %64, i32* %7)
  %66 = load i32*, i32** %6, align 8
  %67 = bitcast i32* %66 to i8**
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @PTR_INTS, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  br label %75

75:                                               ; preds = %63, %59
  %76 = load i32*, i32** %6, align 8
  store i32* %76, i32** @R_end, align 8
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @store_object_id(i32**, i32) #1

declare dso_local i32 @OARR_ENTRY(i32, i32) #1

declare dso_local i32 @metafile_get_flags(i32) #1

declare dso_local i32 @metafile_get_date(i32) #1

declare dso_local i32 @store_value(i32**, i32) #1

declare dso_local i32 @metafile_get_value(i32) #1

declare dso_local i8* @metafile_get_text(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
