; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-tag.c_fixup_tag2.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-tag.c_fixup_tag2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffalo_tag2 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8* }

@brand = common dso_local global i8* null, align 8
@product = common dso_local global i8* null, align 8
@platform = common dso_local global i8* null, align 8
@major = common dso_local global i8* null, align 8
@minor = common dso_local global i8* null, align 8
@language = common dso_local global i8* null, align 8
@num_regions = common dso_local global i32 0, align 4
@region_mask = common dso_local global i32 0, align 4
@region_code = common dso_local global i8* null, align 8
@fsize = common dso_local global i32* null, align 8
@flag = common dso_local global i32 0, align 4
@hwver = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"hwv\00", align 1
@skipcrc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @fixup_tag2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_tag2(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffalo_tag2*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.buffalo_tag2*
  store %struct.buffalo_tag2* %7, %struct.buffalo_tag2** %5, align 8
  %8 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %9 = call i32 @memset(%struct.buffalo_tag2* %8, i8 signext 0, i32 120)
  %10 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %11 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** @brand, align 8
  %14 = load i8*, i8** @brand, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i32 @memcpy(i8* %12, i8* %13, i32 %15)
  %17 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %18 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** @product, align 8
  %21 = load i8*, i8** @product, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = call i32 @memcpy(i8* %19, i8* %20, i32 %22)
  %24 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %25 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** @platform, align 8
  %28 = load i8*, i8** @platform, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = call i32 @memcpy(i8* %26, i8* %27, i32 %29)
  %31 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %32 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** @major, align 8
  %35 = load i8*, i8** @major, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @memcpy(i8* %33, i8* %34, i32 %36)
  %38 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %39 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %38, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** @minor, align 8
  %42 = load i8*, i8** @minor, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = call i32 @memcpy(i8* %40, i8* %41, i32 %43)
  %45 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %46 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** @language, align 8
  %49 = load i8*, i8** @language, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @memcpy(i8* %47, i8* %48, i32 %50)
  %52 = load i32, i32* @num_regions, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %67

54:                                               ; preds = %2
  %55 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %56 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %55, i32 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 77, i8* %58, align 1
  %59 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %60 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %59, i32 0, i32 6
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8 95, i8* %62, align 1
  %63 = load i32, i32* @region_mask, align 4
  %64 = call i8* @htonl(i32 %63)
  %65 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %66 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %65, i32 0, i32 14
  store i8* %64, i8** %66, align 8
  br label %73

67:                                               ; preds = %2
  %68 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %69 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %68, i32 0, i32 6
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** @region_code, align 8
  %72 = call i32 @memcpy(i8* %70, i8* %71, i32 2)
  br label %73

73:                                               ; preds = %67, %54
  %74 = load i32, i32* %4, align 4
  %75 = call i8* @htonl(i32 %74)
  %76 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %77 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %76, i32 0, i32 13
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** @fsize, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @htonl(i32 %80)
  %82 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %83 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %82, i32 0, i32 12
  store i8* %81, i8** %83, align 8
  %84 = load i32*, i32** @fsize, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @htonl(i32 %86)
  %88 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %89 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %88, i32 0, i32 11
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @flag, align 4
  %91 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %92 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %91, i32 0, i32 10
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** @hwver, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %73
  %96 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %97 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %96, i32 0, i32 7
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @memcpy(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %100 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %101 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %100, i32 0, i32 8
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** @hwver, align 8
  %104 = load i8*, i8** @hwver, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = call i32 @memcpy(i8* %102, i8* %103, i32 %105)
  br label %107

107:                                              ; preds = %95, %73
  %108 = load i32, i32* @skipcrc, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %107
  %111 = load i8*, i8** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @buffalo_crc(i8* %111, i32 %112)
  %114 = call i8* @htonl(i32 %113)
  %115 = load %struct.buffalo_tag2*, %struct.buffalo_tag2** %5, align 8
  %116 = getelementptr inbounds %struct.buffalo_tag2, %struct.buffalo_tag2* %115, i32 0, i32 9
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %110, %107
  ret void
}

declare dso_local i32 @memset(%struct.buffalo_tag2*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @buffalo_crc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
