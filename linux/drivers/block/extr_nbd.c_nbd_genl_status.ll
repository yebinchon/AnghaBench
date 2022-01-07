; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_genl_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_genl_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.nlattr = type { i32 }
%struct.nbd_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NBD_ATTR_INDEX = common dso_local global i64 0, align 8
@nbd_index_mutex = common dso_local global i32 0, align 4
@nbd_total_devices = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nbd_genl_family = common dso_local global i32 0, align 4
@NBD_CMD_STATUS = common dso_local global i32 0, align 4
@NBD_ATTR_DEVICE_LIST = common dso_local global i32 0, align 4
@nbd_index_idr = common dso_local global i32 0, align 4
@status_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nbd_genl_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_genl_status(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nbd_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  store i32 -1, i32* %9, align 4
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @NBD_ATTR_INDEX, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @NBD_ATTR_INDEX, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @nla_get_u32(i64 %27)
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %21, %2
  %30 = call i32 @mutex_lock(i32* @nbd_index_mutex)
  %31 = call i64 @nla_attr_size(i32 4)
  %32 = call i64 @nla_attr_size(i32 4)
  %33 = add nsw i64 %31, %32
  %34 = call i64 @nla_total_size(i64 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @nbd_total_devices, align 4
  br label %40

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 1, %39 ]
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %8, align 8
  %44 = mul i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.sk_buff* @genlmsg_new(i64 %45, i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %6, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  br label %102

51:                                               ; preds = %40
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %54 = load i32, i32* @NBD_CMD_STATUS, align 4
  %55 = call i8* @genlmsg_put_reply(%struct.sk_buff* %52, %struct.genl_info* %53, i32* @nbd_genl_family, i32 0, i32 %54)
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i32 @nlmsg_free(%struct.sk_buff* %59)
  br label %102

61:                                               ; preds = %51
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load i32, i32* @NBD_ATTR_DEVICE_LIST, align 4
  %64 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %62, i32 %63)
  store %struct.nlattr* %64, %struct.nlattr** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i32 @idr_for_each(i32* @nbd_index_idr, i32* @status_cb, %struct.sk_buff* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = call i32 @nlmsg_free(%struct.sk_buff* %73)
  br label %102

75:                                               ; preds = %67
  br label %92

76:                                               ; preds = %61
  %77 = load i32, i32* %9, align 4
  %78 = call %struct.nbd_device* @idr_find(i32* @nbd_index_idr, i32 %77)
  store %struct.nbd_device* %78, %struct.nbd_device** %11, align 8
  %79 = load %struct.nbd_device*, %struct.nbd_device** %11, align 8
  %80 = icmp ne %struct.nbd_device* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.nbd_device*, %struct.nbd_device** %11, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @populate_nbd_status(%struct.nbd_device* %82, %struct.sk_buff* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = call i32 @nlmsg_free(%struct.sk_buff* %88)
  br label %102

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %76
  br label %92

92:                                               ; preds = %91, %75
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %95 = call i32 @nla_nest_end(%struct.sk_buff* %93, %struct.nlattr* %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @genlmsg_end(%struct.sk_buff* %96, i8* %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %101 = call i32 @genlmsg_reply(%struct.sk_buff* %99, %struct.genl_info* %100)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %92, %87, %72, %58, %50
  %103 = call i32 @mutex_unlock(i32* @nbd_index_mutex)
  %104 = load i32, i32* %10, align 4
  ret i32 %104
}

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @nla_total_size(i64) #1

declare dso_local i64 @nla_attr_size(i32) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i64, i32) #1

declare dso_local i8* @genlmsg_put_reply(%struct.sk_buff*, %struct.genl_info*, i32*, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @idr_for_each(i32*, i32*, %struct.sk_buff*) #1

declare dso_local %struct.nbd_device* @idr_find(i32*, i32) #1

declare dso_local i32 @populate_nbd_status(%struct.nbd_device*, %struct.sk_buff*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
