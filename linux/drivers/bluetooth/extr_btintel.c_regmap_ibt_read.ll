; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_regmap_ibt_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_regmap_ibt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_ibt_context = type { i32, i32 }
%struct.ibt_cp_reg_access = type { i64, i64, i32 }
%struct.ibt_rp_reg_access = type { i64, i32 }
%struct.sk_buff = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@IBT_REG_MODE_8BIT = common dso_local global i32 0, align 4
@IBT_REG_MODE_16BIT = common dso_local global i32 0, align 4
@IBT_REG_MODE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Register (0x%x) read\00", align 1
@HCI_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"regmap: Register (0x%x) read error (%d)\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"regmap: Register (0x%x) read error, bad len\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"regmap: Register (0x%x) read error, bad addr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64)* @regmap_ibt_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_ibt_read(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.regmap_ibt_context*, align 8
  %13 = alloca %struct.ibt_cp_reg_access, align 8
  %14 = alloca %struct.ibt_rp_reg_access*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.regmap_ibt_context*
  store %struct.regmap_ibt_context* %18, %struct.regmap_ibt_context** %12, align 8
  store i32 0, i32* %16, align 4
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 8
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %126

24:                                               ; preds = %5
  %25 = load i64, i64* %11, align 8
  switch i64 %25, label %35 [
    i64 1, label %26
    i64 2, label %29
    i64 4, label %32
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @IBT_REG_MODE_8BIT, align 4
  %28 = getelementptr inbounds %struct.ibt_cp_reg_access, %struct.ibt_cp_reg_access* %13, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  br label %38

29:                                               ; preds = %24
  %30 = load i32, i32* @IBT_REG_MODE_16BIT, align 4
  %31 = getelementptr inbounds %struct.ibt_cp_reg_access, %struct.ibt_cp_reg_access* %13, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  br label %38

32:                                               ; preds = %24
  %33 = load i32, i32* @IBT_REG_MODE_32BIT, align 4
  %34 = getelementptr inbounds %struct.ibt_cp_reg_access, %struct.ibt_cp_reg_access* %13, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  br label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %126

38:                                               ; preds = %32, %29, %26
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.ibt_cp_reg_access, %struct.ibt_cp_reg_access* %13, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds %struct.ibt_cp_reg_access, %struct.ibt_cp_reg_access* %13, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  %45 = load %struct.regmap_ibt_context*, %struct.regmap_ibt_context** %12, align 8
  %46 = getelementptr inbounds %struct.regmap_ibt_context, %struct.regmap_ibt_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.ibt_cp_reg_access, %struct.ibt_cp_reg_access* %13, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @le32_to_cpu(i64 %49)
  %51 = call i32 @bt_dev_dbg(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.regmap_ibt_context*, %struct.regmap_ibt_context** %12, align 8
  %53 = getelementptr inbounds %struct.regmap_ibt_context, %struct.regmap_ibt_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.regmap_ibt_context*, %struct.regmap_ibt_context** %12, align 8
  %56 = getelementptr inbounds %struct.regmap_ibt_context, %struct.regmap_ibt_context* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @HCI_CMD_TIMEOUT, align 4
  %59 = call %struct.sk_buff* @hci_cmd_sync(i32 %54, i32 %57, i32 24, %struct.ibt_cp_reg_access* %13, i32 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %15, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %61 = call i64 @IS_ERR(%struct.sk_buff* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %38
  %64 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %65 = call i32 @PTR_ERR(%struct.sk_buff* %64)
  store i32 %65, i32* %16, align 4
  %66 = load %struct.regmap_ibt_context*, %struct.regmap_ibt_context** %12, align 8
  %67 = getelementptr inbounds %struct.regmap_ibt_context, %struct.regmap_ibt_context* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.ibt_cp_reg_access, %struct.ibt_cp_reg_access* %13, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @le32_to_cpu(i64 %70)
  %72 = load i32, i32* %16, align 4
  %73 = call i32 (i32, i8*, i32, ...) @bt_dev_err(i32 %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %6, align 4
  br label %126

75:                                               ; preds = %38
  %76 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %11, align 8
  %81 = add i64 16, %80
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load %struct.regmap_ibt_context*, %struct.regmap_ibt_context** %12, align 8
  %85 = getelementptr inbounds %struct.regmap_ibt_context, %struct.regmap_ibt_context* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.ibt_cp_reg_access, %struct.ibt_cp_reg_access* %13, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @le32_to_cpu(i64 %88)
  %90 = call i32 (i32, i8*, i32, ...) @bt_dev_err(i32 %86, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %16, align 4
  br label %122

93:                                               ; preds = %75
  %94 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.ibt_rp_reg_access*
  store %struct.ibt_rp_reg_access* %97, %struct.ibt_rp_reg_access** %14, align 8
  %98 = load %struct.ibt_rp_reg_access*, %struct.ibt_rp_reg_access** %14, align 8
  %99 = getelementptr inbounds %struct.ibt_rp_reg_access, %struct.ibt_rp_reg_access* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.ibt_cp_reg_access, %struct.ibt_cp_reg_access* %13, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %100, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %93
  %105 = load %struct.regmap_ibt_context*, %struct.regmap_ibt_context** %12, align 8
  %106 = getelementptr inbounds %struct.regmap_ibt_context, %struct.regmap_ibt_context* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ibt_rp_reg_access*, %struct.ibt_rp_reg_access** %14, align 8
  %109 = getelementptr inbounds %struct.ibt_rp_reg_access, %struct.ibt_rp_reg_access* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @le32_to_cpu(i64 %110)
  %112 = call i32 (i32, i8*, i32, ...) @bt_dev_err(i32 %107, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %16, align 4
  br label %122

115:                                              ; preds = %93
  %116 = load i8*, i8** %10, align 8
  %117 = load %struct.ibt_rp_reg_access*, %struct.ibt_rp_reg_access** %14, align 8
  %118 = getelementptr inbounds %struct.ibt_rp_reg_access, %struct.ibt_rp_reg_access* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = call i32 @memcpy(i8* %116, i32 %119, i64 %120)
  br label %122

122:                                              ; preds = %115, %104, %83
  %123 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %124 = call i32 @kfree_skb(%struct.sk_buff* %123)
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %63, %35, %21
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @bt_dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local %struct.sk_buff* @hci_cmd_sync(i32, i32, i32, %struct.ibt_cp_reg_access*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
