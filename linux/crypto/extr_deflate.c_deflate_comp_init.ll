; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_deflate.c_deflate_comp_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_deflate.c_deflate_comp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deflate_ctx = type { %struct.z_stream_s }
%struct.z_stream_s = type { i32 }

@MAX_WBITS = common dso_local global i32 0, align 4
@MAX_MEM_LEVEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFLATE_DEF_LEVEL = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@DEFLATE_DEF_WINBITS = common dso_local global i32 0, align 4
@DEFLATE_DEF_MEMLEVEL = common dso_local global i32 0, align 4
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.deflate_ctx*, i32)* @deflate_comp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflate_comp_init(%struct.deflate_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.deflate_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_stream_s*, align 8
  store %struct.deflate_ctx* %0, %struct.deflate_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.deflate_ctx*, %struct.deflate_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.deflate_ctx, %struct.deflate_ctx* %7, i32 0, i32 0
  store %struct.z_stream_s* %8, %struct.z_stream_s** %6, align 8
  %9 = load i32, i32* @MAX_WBITS, align 4
  %10 = load i32, i32* @MAX_MEM_LEVEL, align 4
  %11 = call i32 @zlib_deflate_workspacesize(i32 %9, i32 %10)
  %12 = call i32 @vzalloc(i32 %11)
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %27 = call i32 @zlib_deflateInit(%struct.z_stream_s* %26, i32 3)
  store i32 %27, i32* %5, align 4
  br label %37

28:                                               ; preds = %22
  %29 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %30 = load i32, i32* @DEFLATE_DEF_LEVEL, align 4
  %31 = load i32, i32* @Z_DEFLATED, align 4
  %32 = load i32, i32* @DEFLATE_DEF_WINBITS, align 4
  %33 = sub nsw i32 0, %32
  %34 = load i32, i32* @DEFLATE_DEF_MEMLEVEL, align 4
  %35 = load i32, i32* @Z_DEFAULT_STRATEGY, align 4
  %36 = call i32 @zlib_deflateInit2(%struct.z_stream_s* %29, i32 %30, i32 %31, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %28, %25
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @Z_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %47

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %47, %44, %19
  %46 = load i32, i32* %5, align 4
  ret i32 %46

47:                                               ; preds = %41
  %48 = load %struct.z_stream_s*, %struct.z_stream_s** %6, align 8
  %49 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vfree(i32 %50)
  br label %45
}

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @zlib_deflate_workspacesize(i32, i32) #1

declare dso_local i32 @zlib_deflateInit(%struct.z_stream_s*, i32) #1

declare dso_local i32 @zlib_deflateInit2(%struct.z_stream_s*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
