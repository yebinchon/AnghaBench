; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_decode_parent_image_spec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_decode_parent_image_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parent_image_info = type { i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ParentImageSpec\00", align 1
@e_inval = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.parent_image_info*)* @decode_parent_image_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_parent_image_spec(i8** %0, i8* %1, %struct.parent_image_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.parent_image_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.parent_image_info* %2, %struct.parent_image_info** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @ceph_start_decoding(i8** %11, i8* %12, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %78

18:                                               ; preds = %3
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.parent_image_info*, %struct.parent_image_info** %7, align 8
  %22 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @e_inval, align 4
  %25 = call i32 @ceph_decode_64_safe(i8** %19, i8* %20, i32 %23, i32 %24)
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @ceph_extract_encoded_string(i8** %26, i8* %27, i32* null, i32 %28)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.parent_image_info*, %struct.parent_image_info** %7, align 8
  %32 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.parent_image_info*, %struct.parent_image_info** %7, align 8
  %34 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %18
  %39 = load %struct.parent_image_info*, %struct.parent_image_info** %7, align 8
  %40 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.parent_image_info*, %struct.parent_image_info** %7, align 8
  %44 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %78

46:                                               ; preds = %18
  %47 = load i8**, i8*** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @ceph_extract_encoded_string(i8** %47, i8* %48, i32* null, i32 %49)
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.parent_image_info*, %struct.parent_image_info** %7, align 8
  %53 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.parent_image_info*, %struct.parent_image_info** %7, align 8
  %55 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @IS_ERR(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %46
  %60 = load %struct.parent_image_info*, %struct.parent_image_info** %7, align 8
  %61 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @PTR_ERR(i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.parent_image_info*, %struct.parent_image_info** %7, align 8
  %65 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %78

67:                                               ; preds = %46
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.parent_image_info*, %struct.parent_image_info** %7, align 8
  %71 = getelementptr inbounds %struct.parent_image_info, %struct.parent_image_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @e_inval, align 4
  %74 = call i32 @ceph_decode_64_safe(i8** %68, i8* %69, i32 %72, i32 %73)
  store i32 0, i32* %4, align 4
  br label %78

75:                                               ; No predecessors!
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %67, %59, %38, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @ceph_start_decoding(i8**, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @ceph_decode_64_safe(i8**, i8*, i32, i32) #1

declare dso_local i8* @ceph_extract_encoded_string(i8**, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
