; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_add_outb_message.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_add_outb_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }
%struct.rio_dev = type { i32 }
%struct.fsl_rmu = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32*, i64, i64*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.rio_tx_desc = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [72 x i8] c"RIO: fsl_add_outb_message(): destid %4.4x mbox %d buffer %p len %8.8zx\0A\00", align 1
@RIO_MAX_MSG_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RIO_MSG_OMR_MUI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_add_outb_message(%struct.rio_mport* %0, %struct.rio_dev* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca %struct.rio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fsl_rmu*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rio_tx_desc*, align 8
  %14 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %6, align 8
  store %struct.rio_dev* %1, %struct.rio_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %16 = call %struct.fsl_rmu* @GET_RMM_HANDLE(%struct.rio_mport* %15)
  store %struct.fsl_rmu* %16, %struct.fsl_rmu** %11, align 8
  %17 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %18 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.rio_tx_desc*
  %22 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %23 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rio_tx_desc, %struct.rio_tx_desc* %21, i64 %26
  store %struct.rio_tx_desc* %27, %struct.rio_tx_desc** %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %29 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i8* %32, i64 %33)
  %35 = load i64, i64* %10, align 8
  %36 = icmp ult i64 %35, 8
  br i1 %36, label %41, label %37

37:                                               ; preds = %5
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @RIO_MAX_MSG_SIZE, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %5
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %14, align 4
  br label %155

44:                                               ; preds = %37
  %45 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %46 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %50 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %48, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @memcpy(i64 %55, i8* %56, i64 %57)
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @RIO_MAX_MSG_SIZE, align 8
  %61 = sub i64 %60, 4
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %44
  %64 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %65 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %69 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %67, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %74, %75
  %77 = load i64, i64* @RIO_MAX_MSG_SIZE, align 8
  %78 = load i64, i64* %10, align 8
  %79 = sub i64 %77, %78
  %80 = call i32 @memset(i64 %76, i32 0, i64 %79)
  br label %81

81:                                               ; preds = %63, %44
  %82 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %83 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, 3
  %88 = or i32 %85, %87
  %89 = load %struct.rio_tx_desc*, %struct.rio_tx_desc** %13, align 8
  %90 = getelementptr inbounds %struct.rio_tx_desc, %struct.rio_tx_desc* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %92 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 20
  %95 = or i32 671088640, %94
  %96 = load %struct.rio_tx_desc*, %struct.rio_tx_desc** %13, align 8
  %97 = getelementptr inbounds %struct.rio_tx_desc, %struct.rio_tx_desc* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @is_power_of_2(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %81
  %102 = load i64, i64* %10, align 8
  br label %108

103:                                              ; preds = %81
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @get_bitmask_order(i64 %104)
  %106 = shl i32 1, %105
  %107 = sext i32 %106 to i64
  br label %108

108:                                              ; preds = %103, %101
  %109 = phi i64 [ %102, %101 ], [ %107, %103 ]
  %110 = load %struct.rio_tx_desc*, %struct.rio_tx_desc** %13, align 8
  %111 = getelementptr inbounds %struct.rio_tx_desc, %struct.rio_tx_desc* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %113 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %117 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %115, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = or i32 4, %122
  %124 = load %struct.rio_tx_desc*, %struct.rio_tx_desc** %13, align 8
  %125 = getelementptr inbounds %struct.rio_tx_desc, %struct.rio_tx_desc* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %127 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = call i32 @in_be32(i32* %129)
  store i32 %130, i32* %12, align 4
  %131 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %132 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %131, i32 0, i32 1
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @RIO_MSG_OMR_MUI, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @out_be32(i32* %134, i32 %137)
  %139 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %140 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  %144 = sext i32 %143 to i64
  %145 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %146 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %144, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %108
  %151 = load %struct.fsl_rmu*, %struct.fsl_rmu** %11, align 8
  %152 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  br label %154

154:                                              ; preds = %150, %108
  br label %155

155:                                              ; preds = %154, %41
  %156 = load i32, i32* %14, align 4
  ret i32 %156
}

declare dso_local %struct.fsl_rmu* @GET_RMM_HANDLE(%struct.rio_mport*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i8*, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i64 @is_power_of_2(i64) #1

declare dso_local i32 @get_bitmask_order(i64) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
