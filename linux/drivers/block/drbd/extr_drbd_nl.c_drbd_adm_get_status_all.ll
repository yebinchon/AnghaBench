; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_get_status_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_get_status_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64*, i32 }
%struct.nlattr = type { i32 }
%struct.drbd_resource = type { i32 }

@GENL_HDRLEN = common dso_local global i32 0, align 4
@GENL_MAGIC_FAMILY_HDRSZ = common dso_local global i32 0, align 4
@DRBD_NLA_CFG_CONTEXT = common dso_local global i32 0, align 4
@drbd_cfg_context_nl_policy = common dso_local global i32 0, align 4
@T_ctx_resource_name = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@drbd_destroy_resource = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_adm_get_status_all(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.drbd_resource*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %11 = load i32, i32* @GENL_HDRLEN, align 4
  %12 = load i32, i32* @GENL_MAGIC_FAMILY_HDRSZ, align 4
  %13 = add i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %15 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %2
  %21 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %22 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %29 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %34 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %116

40:                                               ; preds = %27, %20
  br label %112

41:                                               ; preds = %2
  %42 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %43 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @nlmsg_attrdata(i32 %44, i32 %45)
  %47 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %48 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @nlmsg_attrlen(i32 %49, i32 %50)
  %52 = load i32, i32* @DRBD_NLA_CFG_CONTEXT, align 4
  %53 = call %struct.nlattr* @nla_find(i32 %46, i32 %51, i32 %52)
  store %struct.nlattr* %53, %struct.nlattr** %7, align 8
  %54 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %41
  br label %112

57:                                               ; preds = %41
  %58 = load i32, i32* @drbd_cfg_context_nl_policy, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %63 = load i32, i32* @T_ctx_resource_name, align 4
  %64 = call i32 @__nla_type(i32 %63)
  %65 = call %struct.nlattr* @drbd_nla_find_nested(i32 %61, %struct.nlattr* %62, i32 %64)
  store %struct.nlattr* %65, %struct.nlattr** %7, align 8
  %66 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %67 = call i64 @IS_ERR(%struct.nlattr* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %71 = call i32 @PTR_ERR(%struct.nlattr* %70)
  store i32 %71, i32* %3, align 4
  br label %116

72:                                               ; preds = %57
  %73 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %116

78:                                               ; preds = %72
  %79 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %80 = call i8* @nla_data(%struct.nlattr* %79)
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %116

87:                                               ; preds = %78
  %88 = load i8*, i8** %8, align 8
  %89 = call %struct.drbd_resource* @drbd_find_resource(i8* %88)
  store %struct.drbd_resource* %89, %struct.drbd_resource** %9, align 8
  %90 = load %struct.drbd_resource*, %struct.drbd_resource** %9, align 8
  %91 = icmp ne %struct.drbd_resource* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %116

95:                                               ; preds = %87
  %96 = load %struct.drbd_resource*, %struct.drbd_resource** %9, align 8
  %97 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %96, i32 0, i32 0
  %98 = load i32, i32* @drbd_destroy_resource, align 4
  %99 = call i32 @kref_put(i32* %97, i32 %98)
  %100 = load %struct.drbd_resource*, %struct.drbd_resource** %9, align 8
  %101 = ptrtoint %struct.drbd_resource* %100 to i64
  %102 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %103 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  store i64 %101, i64* %105, align 8
  %106 = load %struct.drbd_resource*, %struct.drbd_resource** %9, align 8
  %107 = ptrtoint %struct.drbd_resource* %106 to i64
  %108 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %109 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 2
  store i64 %107, i64* %111, align 8
  br label %112

112:                                              ; preds = %95, %56, %40
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %115 = call i32 @get_one_status(%struct.sk_buff* %113, %struct.netlink_callback* %114)
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %92, %84, %75, %69, %39
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.nlattr* @nla_find(i32, i32, i32) #1

declare dso_local i32 @nlmsg_attrdata(i32, i32) #1

declare dso_local i32 @nlmsg_attrlen(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.nlattr* @drbd_nla_find_nested(i32, %struct.nlattr*, i32) #1

declare dso_local i32 @__nla_type(i32) #1

declare dso_local i64 @IS_ERR(%struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nlattr*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.drbd_resource* @drbd_find_resource(i8*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @get_one_status(%struct.sk_buff*, %struct.netlink_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
