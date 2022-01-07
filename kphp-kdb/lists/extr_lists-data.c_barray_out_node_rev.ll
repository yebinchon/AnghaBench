; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_barray_out_node_rev.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_barray_out_node_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_mode = common dso_local global i32 0, align 4
@R_end = common dso_local global i32* null, align 8
@R = common dso_local global i32* null, align 8
@MAX_RES = common dso_local global i32 0, align 4
@PTR_INTS = common dso_local global i32* null, align 8
@M_global_id_list = common dso_local global i32* null, align 8
@M_obj_id_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @barray_out_node_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @barray_out_node_rev(i32* %0, i32 %1) #0 {
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
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 1024
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @metafile_get_text(i32 %22, i32* %7)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** @PTR_INTS, align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = sub nsw i64 %29, 1
  %31 = inttoptr i64 %30 to i8**
  store i8* %23, i8** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 -1
  store i32* %34, i32** %6, align 8
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** @PTR_INTS, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = ptrtoint i32* %36 to i64
  %38 = ptrtoint i32* %35 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %6, align 8
  br label %42

42:                                               ; preds = %21, %2
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 512
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @metafile_get_value(i32 %47)
  %49 = call i32 @store_value_rev(i32** %6, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 256
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32*, i32** @M_global_id_list, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 -1
  store i32* %61, i32** %6, align 8
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %50
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 128
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @metafile_get_date(i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 -1
  store i32* %70, i32** %6, align 8
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 64
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @metafile_get_flags(i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 -1
  store i32* %79, i32** %6, align 8
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %71
  %81 = load i32, i32* @M_obj_id_list, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @OARR_ENTRY(i32 %81, i32 %82)
  %84 = call i32 @store_object_id_rev(i32** %6, i32 %83)
  %85 = load i32*, i32** %6, align 8
  store i32* %85, i32** @R_end, align 8
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @metafile_get_text(i32, i32*) #1

declare dso_local i32 @store_value_rev(i32**, i32) #1

declare dso_local i32 @metafile_get_value(i32) #1

declare dso_local i32 @metafile_get_date(i32) #1

declare dso_local i32 @metafile_get_flags(i32) #1

declare dso_local i32 @store_object_id_rev(i32**, i32) #1

declare dso_local i32 @OARR_ENTRY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
