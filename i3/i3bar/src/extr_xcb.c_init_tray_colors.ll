; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_init_tray_colors.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_xcb.c_init_tray_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"#FFFFFF\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Setting bar_fg = %s as _NET_SYSTEM_TRAY_COLORS\0A\00", align 1
@xcb_connection = common dso_local global i32 0, align 4
@XCB_PROP_MODE_REPLACE = common dso_local global i32 0, align 4
@selwin = common dso_local global i32 0, align 4
@atoms = common dso_local global i32* null, align 8
@_NET_SYSTEM_TRAY_COLORS = common dso_local global i64 0, align 8
@XCB_ATOM_CARDINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_tray_colors() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [3 x [3 x i8]], align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [12 x i32], align 16
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0, i32 0), align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0, i32 0), align 8
  br label %15

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i8* [ %13, %12 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %14 ]
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 @DLOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %2, i64 0, i64 0
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %19, i64 0, i64 0
  %21 = load i8*, i8** %1, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %20, align 1
  %24 = getelementptr inbounds i8, i8* %20, i64 1
  %25 = load i8*, i8** %1, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %19, i64 1
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %29, i64 0, i64 0
  %31 = load i8*, i8** %1, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %30, align 1
  %34 = getelementptr inbounds i8, i8* %30, i64 1
  %35 = load i8*, i8** %1, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %34, align 1
  %38 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %29, i64 1
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %39, i64 0, i64 0
  %41 = load i8*, i8** %1, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 5
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %40, align 1
  %44 = getelementptr inbounds i8, i8* %40, i64 1
  %45 = load i8*, i8** %1, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 6
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %44, align 1
  %48 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %2, i64 0, i64 0
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %49, i64 0, i64 0
  %51 = call i32 @strtol(i8* %50, i32* null, i32 16)
  store i32 %51, i32* %3, align 4
  %52 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %2, i64 0, i64 1
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %52, i64 0, i64 0
  %54 = call i32 @strtol(i8* %53, i32* null, i32 16)
  store i32 %54, i32* %4, align 4
  %55 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %2, i64 0, i64 2
  %56 = getelementptr inbounds [3 x i8], [3 x i8]* %55, i64 0, i64 0
  %57 = call i32 @strtol(i8* %56, i32* null, i32 16)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %3, align 4
  %59 = shl i32 %58, 8
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = shl i32 %62, 8
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 %66, 8
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %8, align 4
  %70 = getelementptr inbounds [12 x i32], [12 x i32]* %9, i64 0, i64 0
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %70, align 4
  %72 = getelementptr inbounds i32, i32* %70, i64 1
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %72, align 4
  %74 = getelementptr inbounds i32, i32* %72, i64 1
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds i32, i32* %74, i64 1
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %76, align 4
  %78 = getelementptr inbounds i32, i32* %76, i64 1
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %78, align 4
  %80 = getelementptr inbounds i32, i32* %78, i64 1
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %80, align 4
  %82 = getelementptr inbounds i32, i32* %80, i64 1
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %82, align 4
  %84 = getelementptr inbounds i32, i32* %82, i64 1
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %84, align 4
  %86 = getelementptr inbounds i32, i32* %84, i64 1
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %86, align 4
  %88 = getelementptr inbounds i32, i32* %86, i64 1
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %88, align 4
  %90 = getelementptr inbounds i32, i32* %88, i64 1
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %90, align 4
  %92 = getelementptr inbounds i32, i32* %90, i64 1
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %92, align 4
  %94 = load i32, i32* @xcb_connection, align 4
  %95 = load i32, i32* @XCB_PROP_MODE_REPLACE, align 4
  %96 = load i32, i32* @selwin, align 4
  %97 = load i32*, i32** @atoms, align 8
  %98 = load i64, i64* @_NET_SYSTEM_TRAY_COLORS, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @XCB_ATOM_CARDINAL, align 4
  %102 = getelementptr inbounds [12 x i32], [12 x i32]* %9, i64 0, i64 0
  %103 = call i32 @xcb_change_property(i32 %94, i32 %95, i32 %96, i32 %100, i32 %101, i32 32, i32 12, i32* %102)
  ret void
}

declare dso_local i32 @DLOG(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @xcb_change_property(i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
