; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_nl_classifier_test.c_nl_classifier_msg_recv.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_nl_classifier_test.c_nl_classifier_msg_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.genlmsghdr = type { i32 }
%struct.nlattr = type { i32 }

@NL_CLASSIFIER_ATTR_MAX = common dso_local global i32 0, align 4
@NL_CLASSIFIER_GENL_HDRSIZE = common dso_local global i32 0, align 4
@nl_classifier_genl_policy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Acceleration successful:\0A\00", align 1
@NL_CLASSIFIER_ATTR_TUPLE = common dso_local global i64 0, align 8
@NL_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Connection is closed:\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"nl classifier received unknow message %d\0A\00", align 1
@NL_SKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_classifier_msg_recv(%struct.nl_msg* %0, i8* %1) #0 {
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
  %15 = load i32, i32* @NL_CLASSIFIER_ATTR_MAX, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca %struct.nlattr*, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %21 = load i32, i32* @NL_CLASSIFIER_GENL_HDRSIZE, align 4
  %22 = load i32, i32* @NL_CLASSIFIER_ATTR_MAX, align 4
  %23 = load i32, i32* @nl_classifier_genl_policy, align 4
  %24 = call i32 @genlmsg_parse(%struct.nlmsghdr* %20, i32 %21, %struct.nlattr** %19, i32 %22, i32 %23)
  %25 = load %struct.genlmsghdr*, %struct.genlmsghdr** %7, align 8
  %26 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %44 [
    i32 129, label %28
    i32 128, label %36
  ]

28:                                               ; preds = %2
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* @NL_CLASSIFIER_ATTR_TUPLE, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i32 @nla_data(%struct.nlattr* %32)
  %34 = call i32 @nl_classifier_dump_nl_tuple(i32 %33)
  %35 = load i32, i32* @NL_OK, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %51

36:                                               ; preds = %2
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i64, i64* @NL_CLASSIFIER_ATTR_TUPLE, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i32 @nla_data(%struct.nlattr* %40)
  %42 = call i32 @nl_classifier_dump_nl_tuple(i32 %41)
  %43 = load i32, i32* @NL_OK, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %51

44:                                               ; preds = %2
  %45 = load %struct.genlmsghdr*, %struct.genlmsghdr** %7, align 8
  %46 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @NL_SKIP, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %36, %28
  %52 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.nl_msg*) #1

declare dso_local %struct.genlmsghdr* @nlmsg_data(%struct.nlmsghdr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @genlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nl_classifier_dump_nl_tuple(i32) #1

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
