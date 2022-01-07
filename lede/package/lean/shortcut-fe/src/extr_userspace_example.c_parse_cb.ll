; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_userspace_example.c_parse_cb.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_userspace_example.c_parse_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.genlmsghdr = type { i32 }
%struct.nlattr = type { i32 }

@FAST_CLASSIFIER_A_MAX = common dso_local global i32 0, align 4
@fast_classifier_genl_policy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Got a offloaded message\0A\00", align 1
@FAST_CLASSIFIER_A_TUPLE = common dso_local global i64 0, align 8
@NL_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Got a done message\0A\00", align 1
@NL_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, i8*)* @parse_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cb(%struct.nl_msg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.genlmsghdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nl_msg* %0, %struct.nl_msg** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %12 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.nl_msg* %11)
  store %struct.nlmsghdr* %12, %struct.nlmsghdr** %6, align 8
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %14 = call %struct.genlmsghdr* @nlmsg_data(%struct.nlmsghdr* %13)
  store %struct.genlmsghdr* %14, %struct.genlmsghdr** %7, align 8
  %15 = load i32, i32* @FAST_CLASSIFIER_A_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %20 = load i32, i32* @FAST_CLASSIFIER_A_MAX, align 4
  %21 = load i32, i32* @fast_classifier_genl_policy, align 4
  %22 = call i32 @genlmsg_parse(%struct.nlmsghdr* %19, i32 0, %struct.nlattr** %18, i32 %20, i32 %21)
  %23 = load %struct.genlmsghdr*, %struct.genlmsghdr** %7, align 8
  %24 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %42 [
    i32 128, label %26
    i32 129, label %34
  ]

26:                                               ; preds = %2
  %27 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @FAST_CLASSIFIER_A_TUPLE, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i32 @nla_data(%struct.nlattr* %30)
  %32 = call i32 @dump_fc_tuple(i32 %31)
  %33 = load i32, i32* @NL_OK, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %44

34:                                               ; preds = %2
  %35 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* @FAST_CLASSIFIER_A_TUPLE, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call i32 @nla_data(%struct.nlattr* %38)
  %40 = call i32 @dump_fc_tuple(i32 %39)
  %41 = load i32, i32* @NL_OK, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %44

42:                                               ; preds = %2
  %43 = load i32, i32* @NL_SKIP, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %34, %26
  %45 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.nl_msg*) #1

declare dso_local %struct.genlmsghdr* @nlmsg_data(%struct.nlmsghdr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @genlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dump_fc_tuple(i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
