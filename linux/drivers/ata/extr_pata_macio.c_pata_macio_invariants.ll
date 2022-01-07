; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_invariants.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pata_macio_priv = type { i32, i64, i32, i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"shasta-ata\00", align 1
@controller_sh_ata6 = common dso_local global i32 0, align 4
@pata_macio_shasta_timings = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"kauai-ata\00", align 1
@controller_un_ata6 = common dso_local global i32 0, align 4
@pata_macio_kauai_timings = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"K2-UATA\00", align 1
@controller_k2_ata6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"keylargo-ata\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ata-4\00", align 1
@controller_kl_ata4 = common dso_local global i32 0, align 4
@pata_macio_kl66_timings = common dso_local global i8* null, align 8
@controller_kl_ata3 = common dso_local global i32 0, align 4
@pata_macio_kl33_timings = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"heathrow-ata\00", align 1
@controller_heathrow = common dso_local global i32 0, align 4
@pata_macio_heathrow_timings = common dso_local global i8* null, align 8
@controller_ohare = common dso_local global i32 0, align 4
@pata_macio_ohare_timings = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"AAPL,bus-id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pata_macio_priv*)* @pata_macio_invariants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_macio_invariants(%struct.pata_macio_priv* %0) #0 {
  %2 = alloca %struct.pata_macio_priv*, align 8
  %3 = alloca i32*, align 8
  store %struct.pata_macio_priv* %0, %struct.pata_macio_priv** %2, align 8
  %4 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %5 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @of_device_is_compatible(i32 %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @controller_sh_ata6, align 4
  %11 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %12 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load i8*, i8** @pata_macio_shasta_timings, align 8
  %14 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %15 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  br label %93

16:                                               ; preds = %1
  %17 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %18 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @of_device_is_compatible(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, i32* @controller_un_ata6, align 4
  %24 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %25 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @pata_macio_kauai_timings, align 8
  %27 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %28 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  br label %92

29:                                               ; preds = %16
  %30 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %31 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @of_device_is_compatible(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* @controller_k2_ata6, align 4
  %37 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %38 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** @pata_macio_kauai_timings, align 8
  %40 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %41 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  br label %91

42:                                               ; preds = %29
  %43 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %44 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @of_device_is_compatible(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %50 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @of_node_name_eq(i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* @controller_kl_ata4, align 4
  %56 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %57 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** @pata_macio_kl66_timings, align 8
  %59 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %60 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  br label %68

61:                                               ; preds = %48
  %62 = load i32, i32* @controller_kl_ata3, align 4
  %63 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %64 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** @pata_macio_kl33_timings, align 8
  %66 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %67 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %61, %54
  br label %90

69:                                               ; preds = %42
  %70 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %71 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @of_device_is_compatible(i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i32, i32* @controller_heathrow, align 4
  %77 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %78 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** @pata_macio_heathrow_timings, align 8
  %80 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %81 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  br label %89

82:                                               ; preds = %69
  %83 = load i32, i32* @controller_ohare, align 4
  %84 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %85 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load i8*, i8** @pata_macio_ohare_timings, align 8
  %87 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %88 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %82, %75
  br label %90

90:                                               ; preds = %89, %68
  br label %91

91:                                               ; preds = %90, %35
  br label %92

92:                                               ; preds = %91, %22
  br label %93

93:                                               ; preds = %92, %9
  %94 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %95 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32* @of_get_property(i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* null)
  store i32* %97, i32** %3, align 8
  %98 = load i32*, i32** %3, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* %101, align 4
  br label %104

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %100
  %105 = phi i32 [ %102, %100 ], [ 0, %103 ]
  %106 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %107 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %109 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %104
  %113 = load i32*, i32** %3, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %2, align 8
  %117 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %112, %104
  ret void
}

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i64 @of_node_name_eq(i32, i8*) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
