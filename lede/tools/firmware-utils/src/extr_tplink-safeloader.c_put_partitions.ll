; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_put_partitions.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_put_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_partition_entry = type { i8*, i64 }
%struct.image_partition_entry = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"%s partition too big (more than %u bytes)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"fwup-ptn %s base 0x%05x size 0x%05x\09\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"image partition table overflow?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.flash_partition_entry*, %struct.image_partition_entry*)* @put_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_partitions(i32* %0, %struct.flash_partition_entry* %1, %struct.image_partition_entry* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.flash_partition_entry*, align 8
  %6 = alloca %struct.image_partition_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.flash_partition_entry* %1, %struct.flash_partition_entry** %5, align 8
  store %struct.image_partition_entry* %2, %struct.image_partition_entry** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = bitcast i32* %14 to i8*
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2048
  store i8* %17, i8** %10, align 8
  store i64 2048, i64* %11, align 8
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %135, %3
  %19 = load %struct.image_partition_entry*, %struct.image_partition_entry** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %19, i64 %20
  %22 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %138

25:                                               ; preds = %18
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %73, %25
  %27 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %5, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %27, i64 %28
  %30 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %76

33:                                               ; preds = %26
  %34 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %5, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %34, i64 %35
  %37 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.image_partition_entry*, %struct.image_partition_entry** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %39, i64 %40
  %42 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %38, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %72, label %46

46:                                               ; preds = %33
  %47 = load %struct.image_partition_entry*, %struct.image_partition_entry** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %47, i64 %48
  %50 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %5, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %52, i64 %53
  %55 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %51, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %46
  %59 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %5, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %59, i64 %60
  %62 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %5, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %64, i64 %65
  %67 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %69)
  br label %71

71:                                               ; preds = %58, %46
  br label %76

72:                                               ; preds = %33
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %26

76:                                               ; preds = %71, %26
  %77 = load %struct.flash_partition_entry*, %struct.flash_partition_entry** %5, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %77, i64 %78
  %80 = getelementptr inbounds %struct.flash_partition_entry, %struct.flash_partition_entry* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @assert(i8* %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load %struct.image_partition_entry*, %struct.image_partition_entry** %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %86, i64 %87
  %89 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.image_partition_entry*, %struct.image_partition_entry** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %91, i64 %92
  %94 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @memcpy(i32* %85, i32 %90, i64 %95)
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  store i64 %101, i64* %12, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.image_partition_entry*, %struct.image_partition_entry** %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %104, i64 %105
  %107 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i64, i64* %11, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.image_partition_entry*, %struct.image_partition_entry** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %111, i64 %112
  %114 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i64 @snprintf(i8* %102, i64 %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %108, i32 %110, i32 %116)
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* %12, align 8
  %120 = sub i64 %119, 1
  %121 = icmp ugt i64 %118, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %76
  %123 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %76
  %125 = load i64, i64* %13, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 %125
  store i8* %127, i8** %9, align 8
  %128 = load %struct.image_partition_entry*, %struct.image_partition_entry** %6, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %128, i64 %129
  %131 = getelementptr inbounds %struct.image_partition_entry, %struct.image_partition_entry* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %11, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %11, align 8
  br label %135

135:                                              ; preds = %124
  %136 = load i64, i64* %7, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %7, align 8
  br label %18

138:                                              ; preds = %18
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
