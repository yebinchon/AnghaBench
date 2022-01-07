; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_nl_classifier_test.c_nl_classifier_offload.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_nl_classifier_test.c_nl_classifier_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_classifier_instance = type { i32, i32 }
%struct.nl_msg = type { i32 }
%struct.nl_classifier_tuple = type { i32, i8, i16, i16, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to allocate message\0A\00", align 1
@NL_AUTO_PID = common dso_local global i32 0, align 4
@NL_AUTO_SEQ = common dso_local global i32 0, align 4
@NL_CLASSIFIER_GENL_HDRSIZE = common dso_local global i32 0, align 4
@NLM_F_REQUEST = common dso_local global i32 0, align 4
@NL_CLASSIFIER_CMD_ACCEL = common dso_local global i32 0, align 4
@NL_CLASSIFIER_GENL_VERSION = common dso_local global i32 0, align 4
@NL_CLASSIFIER_ATTR_TUPLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"send netlink message failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"nl classifier offload connection successful\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl_classifier_offload(%struct.nl_classifier_instance* %0, i8 zeroext %1, i64* %2, i64* %3, i16 zeroext %4, i16 zeroext %5, i32 %6) #0 {
  %8 = alloca %struct.nl_classifier_instance*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca %struct.nl_msg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nl_classifier_tuple, align 4
  store %struct.nl_classifier_instance* %0, %struct.nl_classifier_instance** %8, align 8
  store i8 %1, i8* %9, align 1
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i16 %4, i16* %12, align 2
  store i16 %5, i16* %13, align 2
  store i32 %6, i32* %14, align 4
  %18 = call i32 @memset(%struct.nl_classifier_tuple* %17, i32 0, i32 20)
  %19 = load i32, i32* %14, align 4
  %20 = getelementptr inbounds %struct.nl_classifier_tuple, %struct.nl_classifier_tuple* %17, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i8, i8* %9, align 1
  %22 = getelementptr inbounds %struct.nl_classifier_tuple, %struct.nl_classifier_tuple* %17, i32 0, i32 1
  store i8 %21, i8* %22, align 4
  %23 = getelementptr inbounds %struct.nl_classifier_tuple, %struct.nl_classifier_tuple* %17, i32 0, i32 5
  %24 = load i64*, i64** %10, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @AF_INET, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 4, i32 16
  %30 = call i32 @memcpy(i32* %23, i64* %24, i32 %29)
  %31 = getelementptr inbounds %struct.nl_classifier_tuple, %struct.nl_classifier_tuple* %17, i32 0, i32 4
  %32 = load i64*, i64** %11, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @AF_INET, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 4, i32 16
  %38 = call i32 @memcpy(i32* %31, i64* %32, i32 %37)
  %39 = load i16, i16* %12, align 2
  %40 = getelementptr inbounds %struct.nl_classifier_tuple, %struct.nl_classifier_tuple* %17, i32 0, i32 2
  store i16 %39, i16* %40, align 2
  %41 = load i16, i16* %13, align 2
  %42 = getelementptr inbounds %struct.nl_classifier_tuple, %struct.nl_classifier_tuple* %17, i32 0, i32 3
  store i16 %41, i16* %42, align 4
  %43 = call %struct.nl_msg* (...) @nlmsg_alloc()
  store %struct.nl_msg* %43, %struct.nl_msg** %15, align 8
  %44 = load %struct.nl_msg*, %struct.nl_msg** %15, align 8
  %45 = icmp ne %struct.nl_msg* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %7
  %47 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %78

48:                                               ; preds = %7
  %49 = load %struct.nl_msg*, %struct.nl_msg** %15, align 8
  %50 = load i32, i32* @NL_AUTO_PID, align 4
  %51 = load i32, i32* @NL_AUTO_SEQ, align 4
  %52 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %8, align 8
  %53 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NL_CLASSIFIER_GENL_HDRSIZE, align 4
  %56 = load i32, i32* @NLM_F_REQUEST, align 4
  %57 = load i32, i32* @NL_CLASSIFIER_CMD_ACCEL, align 4
  %58 = load i32, i32* @NL_CLASSIFIER_GENL_VERSION, align 4
  %59 = call i32 @genlmsg_put(%struct.nl_msg* %49, i32 %50, i32 %51, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.nl_msg*, %struct.nl_msg** %15, align 8
  %61 = load i32, i32* @NL_CLASSIFIER_ATTR_TUPLE, align 4
  %62 = call i32 @nla_put(%struct.nl_msg* %60, i32 %61, i32 20, %struct.nl_classifier_tuple* %17)
  %63 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %8, align 8
  %64 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nl_msg*, %struct.nl_msg** %15, align 8
  %67 = call i32 @nl_send_auto(i32 %65, %struct.nl_msg* %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %48
  %71 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.nl_msg*, %struct.nl_msg** %15, align 8
  %73 = call i32 @nlmsg_free(%struct.nl_msg* %72)
  br label %78

74:                                               ; preds = %48
  %75 = load %struct.nl_msg*, %struct.nl_msg** %15, align 8
  %76 = call i32 @nlmsg_free(%struct.nl_msg* %75)
  %77 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %70, %46
  ret void
}

declare dso_local i32 @memset(%struct.nl_classifier_tuple*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local %struct.nl_msg* @nlmsg_alloc(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @genlmsg_put(%struct.nl_msg*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nla_put(%struct.nl_msg*, i32, i32, %struct.nl_classifier_tuple*) #1

declare dso_local i32 @nl_send_auto(i32, %struct.nl_msg*) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
