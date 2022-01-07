; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_parse_vblk.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_parse_vblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vblk = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"VBLK header is corrupt.\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Parsed VBLK 0x%llx (type: 0x%02x) ok.\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to parse VBLK 0x%llx (type: 0x%02x).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.vblk*)* @ldm_parse_vblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_parse_vblk(i32* %0, i32 %1, %struct.vblk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vblk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vblk* %2, %struct.vblk** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.vblk*, %struct.vblk** %7, align 8
  %14 = icmp ne %struct.vblk* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ true, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ldm_relative(i32* %20, i32 %21, i32 24, i32 0)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = call i32 (i8*, ...) @ldm_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %111

27:                                               ; preds = %16
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 18
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vblk*, %struct.vblk** %7, align 8
  %32 = getelementptr inbounds %struct.vblk, %struct.vblk* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 19
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vblk*, %struct.vblk** %7, align 8
  %37 = getelementptr inbounds %struct.vblk, %struct.vblk* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 24
  %40 = call i64 @ldm_get_vnum(i32* %39)
  %41 = load %struct.vblk*, %struct.vblk** %7, align 8
  %42 = getelementptr inbounds %struct.vblk, %struct.vblk* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 24
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct.vblk*, %struct.vblk** %7, align 8
  %49 = getelementptr inbounds %struct.vblk, %struct.vblk* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ldm_get_vstr(i32* %47, i32 %50, i32 4)
  %52 = load %struct.vblk*, %struct.vblk** %7, align 8
  %53 = getelementptr inbounds %struct.vblk, %struct.vblk* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %90 [
    i32 134, label %55
    i32 131, label %60
    i32 130, label %65
    i32 133, label %70
    i32 132, label %75
    i32 129, label %80
    i32 128, label %85
  ]

55:                                               ; preds = %27
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.vblk*, %struct.vblk** %7, align 8
  %59 = call i32 @ldm_parse_cmp3(i32* %56, i32 %57, %struct.vblk* %58)
  store i32 %59, i32* %8, align 4
  br label %90

60:                                               ; preds = %27
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.vblk*, %struct.vblk** %7, align 8
  %64 = call i32 @ldm_parse_dsk3(i32* %61, i32 %62, %struct.vblk* %63)
  store i32 %64, i32* %8, align 4
  br label %90

65:                                               ; preds = %27
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.vblk*, %struct.vblk** %7, align 8
  %69 = call i32 @ldm_parse_dsk4(i32* %66, i32 %67, %struct.vblk* %68)
  store i32 %69, i32* %8, align 4
  br label %90

70:                                               ; preds = %27
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.vblk*, %struct.vblk** %7, align 8
  %74 = call i32 @ldm_parse_dgr3(i32* %71, i32 %72, %struct.vblk* %73)
  store i32 %74, i32* %8, align 4
  br label %90

75:                                               ; preds = %27
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.vblk*, %struct.vblk** %7, align 8
  %79 = call i32 @ldm_parse_dgr4(i32* %76, i32 %77, %struct.vblk* %78)
  store i32 %79, i32* %8, align 4
  br label %90

80:                                               ; preds = %27
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.vblk*, %struct.vblk** %7, align 8
  %84 = call i32 @ldm_parse_prt3(i32* %81, i32 %82, %struct.vblk* %83)
  store i32 %84, i32* %8, align 4
  br label %90

85:                                               ; preds = %27
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.vblk*, %struct.vblk** %7, align 8
  %89 = call i32 @ldm_parse_vol5(i32* %86, i32 %87, %struct.vblk* %88)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %27, %85, %80, %75, %70, %65, %60, %55
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.vblk*, %struct.vblk** %7, align 8
  %95 = getelementptr inbounds %struct.vblk, %struct.vblk* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.vblk*, %struct.vblk** %7, align 8
  %98 = getelementptr inbounds %struct.vblk, %struct.vblk* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ldm_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %96, i32 %99)
  br label %109

101:                                              ; preds = %90
  %102 = load %struct.vblk*, %struct.vblk** %7, align 8
  %103 = getelementptr inbounds %struct.vblk, %struct.vblk* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.vblk*, %struct.vblk** %7, align 8
  %106 = getelementptr inbounds %struct.vblk, %struct.vblk* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @ldm_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %104, i32 %107)
  br label %109

109:                                              ; preds = %101, %93
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %25
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ldm_relative(i32*, i32, i32, i32) #1

declare dso_local i32 @ldm_error(i8*, ...) #1

declare dso_local i64 @ldm_get_vnum(i32*) #1

declare dso_local i32 @ldm_get_vstr(i32*, i32, i32) #1

declare dso_local i32 @ldm_parse_cmp3(i32*, i32, %struct.vblk*) #1

declare dso_local i32 @ldm_parse_dsk3(i32*, i32, %struct.vblk*) #1

declare dso_local i32 @ldm_parse_dsk4(i32*, i32, %struct.vblk*) #1

declare dso_local i32 @ldm_parse_dgr3(i32*, i32, %struct.vblk*) #1

declare dso_local i32 @ldm_parse_dgr4(i32*, i32, %struct.vblk*) #1

declare dso_local i32 @ldm_parse_prt3(i32*, i32, %struct.vblk*) #1

declare dso_local i32 @ldm_parse_vol5(i32*, i32, %struct.vblk*) #1

declare dso_local i32 @ldm_debug(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
