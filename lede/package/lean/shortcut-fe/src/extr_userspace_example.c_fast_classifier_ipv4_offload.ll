; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_userspace_example.c_fast_classifier_ipv4_offload.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_userspace_example.c_fast_classifier_ipv4_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.fast_classifier_tuple = type { i8, i16, i16, i8*, float*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"Unable to init generic netlink\0A\00", align 1
@sock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to allocate message\0A\00", align 1
@NL_AUTO_PID = common dso_local global i32 0, align 4
@NL_AUTO_SEQ = common dso_local global i32 0, align 4
@family = common dso_local global i32 0, align 4
@FAST_CLASSIFIER_GENL_HDRSIZE = common dso_local global i32 0, align 4
@NLM_F_REQUEST = common dso_local global i32 0, align 4
@FAST_CLASSIFIER_C_OFFLOAD = common dso_local global i32 0, align 4
@FAST_CLASSIFIER_GENL_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"nlmsg_free failed\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"wait for ack failed\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INET_ADDRSTRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fast_classifier_ipv4_offload(i8 zeroext %0, i64 %1, i64 %2, i16 zeroext %3, i16 zeroext %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca %struct.nl_msg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fast_classifier_tuple, align 8
  store i8 %0, i8* %6, align 1
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i16 %3, i16* %9, align 2
  store i16 %4, i16* %10, align 2
  %14 = load i8, i8* %6, align 1
  %15 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 0
  store i8 %14, i8* %15, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load i16, i16* %9, align 2
  %25 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 1
  store i16 %24, i16* %25, align 2
  %26 = load i16, i16* %10, align 2
  %27 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 2
  store i16 %26, i16* %27, align 4
  %28 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 97, i8* %30, align 1
  %31 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 98, i8* %33, align 1
  %34 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8 99, i8* %36, align 1
  %37 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  store i8 100, i8* %39, align 1
  %40 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  store i8 101, i8* %42, align 1
  %43 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 5
  store i8 102, i8* %45, align 1
  %46 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 4
  %47 = load float*, float** %46, align 8
  %48 = getelementptr inbounds float, float* %47, i64 0
  store float 1.020000e+02, float* %48, align 4
  %49 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 4
  %50 = load float*, float** %49, align 8
  %51 = getelementptr inbounds float, float* %50, i64 1
  store float 1.010000e+02, float* %51, align 4
  %52 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 4
  %53 = load float*, float** %52, align 8
  %54 = getelementptr inbounds float, float* %53, i64 2
  store float 1.000000e+02, float* %54, align 4
  %55 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 4
  %56 = load float*, float** %55, align 8
  %57 = getelementptr inbounds float, float* %56, i64 3
  store float 9.900000e+01, float* %57, align 4
  %58 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 4
  %59 = load float*, float** %58, align 8
  %60 = getelementptr inbounds float, float* %59, i64 4
  store float 9.800000e+01, float* %60, align 4
  %61 = getelementptr inbounds %struct.fast_classifier_tuple, %struct.fast_classifier_tuple* %13, i32 0, i32 4
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 5
  store float 9.700000e+01, float* %63, align 4
  %64 = call i64 (...) @fast_classifier_init()
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %5
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %68 = call i32 @exit(i32 1) #3
  unreachable

69:                                               ; preds = %5
  %70 = call %struct.nl_msg* (...) @nlmsg_alloc()
  store %struct.nl_msg* %70, %struct.nl_msg** %11, align 8
  %71 = load %struct.nl_msg*, %struct.nl_msg** %11, align 8
  %72 = icmp ne %struct.nl_msg* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @sock, align 4
  %75 = call i32 @nl_socket_free(i32 %74)
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %113

77:                                               ; preds = %69
  %78 = load %struct.nl_msg*, %struct.nl_msg** %11, align 8
  %79 = load i32, i32* @NL_AUTO_PID, align 4
  %80 = load i32, i32* @NL_AUTO_SEQ, align 4
  %81 = load i32, i32* @family, align 4
  %82 = load i32, i32* @FAST_CLASSIFIER_GENL_HDRSIZE, align 4
  %83 = load i32, i32* @NLM_F_REQUEST, align 4
  %84 = load i32, i32* @FAST_CLASSIFIER_C_OFFLOAD, align 4
  %85 = load i32, i32* @FAST_CLASSIFIER_GENL_VERSION, align 4
  %86 = call i32 @genlmsg_put(%struct.nl_msg* %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.nl_msg*, %struct.nl_msg** %11, align 8
  %88 = call i32 @nla_put(%struct.nl_msg* %87, i32 1, i32 40, %struct.fast_classifier_tuple* %13)
  %89 = load i32, i32* @sock, align 4
  %90 = load %struct.nl_msg*, %struct.nl_msg** %11, align 8
  %91 = call i32 @nl_send_auto_complete(i32 %89, %struct.nl_msg* %90)
  store i32 %91, i32* %12, align 4
  %92 = load %struct.nl_msg*, %struct.nl_msg** %11, align 8
  %93 = call i32 @nlmsg_free(%struct.nl_msg* %92)
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %77
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @sock, align 4
  %99 = call i32 @nl_close(i32 %98)
  %100 = load i32, i32* @sock, align 4
  %101 = call i32 @nl_socket_free(i32 %100)
  br label %113

102:                                              ; preds = %77
  %103 = load i32, i32* @sock, align 4
  %104 = call i32 @nl_wait_for_ack(i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @sock, align 4
  %110 = call i32 @nl_close(i32 %109)
  %111 = load i32, i32* @sock, align 4
  %112 = call i32 @nl_socket_free(i32 %111)
  br label %113

113:                                              ; preds = %73, %96, %107, %102
  ret void
}

declare dso_local i64 @fast_classifier_init(...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.nl_msg* @nlmsg_alloc(...) #1

declare dso_local i32 @nl_socket_free(i32) #1

declare dso_local i32 @genlmsg_put(%struct.nl_msg*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nla_put(%struct.nl_msg*, i32, i32, %struct.fast_classifier_tuple*) #1

declare dso_local i32 @nl_send_auto_complete(i32, %struct.nl_msg*) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

declare dso_local i32 @nl_close(i32) #1

declare dso_local i32 @nl_wait_for_ack(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
