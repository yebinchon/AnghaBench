; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_unl.c_unl_genl_request.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_unl.c_unl_genl_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unl = type { i32 }
%struct.nl_msg = type { i32 }
%struct.nl_cb = type { i32 }

@NL_CB_CUSTOM = common dso_local global i32 0, align 4
@error_handler = common dso_local global i32 0, align 4
@NL_CB_FINISH = common dso_local global i32 0, align 4
@finish_handler = common dso_local global i32 0, align 4
@NL_CB_ACK = common dso_local global i32 0, align 4
@ack_handler = common dso_local global i32 0, align 4
@NL_CB_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unl_genl_request(%struct.unl* %0, %struct.nl_msg* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.unl*, align 8
  %6 = alloca %struct.nl_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nl_cb*, align 8
  %10 = alloca i32, align 4
  store %struct.unl* %0, %struct.unl** %5, align 8
  store %struct.nl_msg* %1, %struct.nl_msg** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @NL_CB_CUSTOM, align 4
  %12 = call %struct.nl_cb* @nl_cb_alloc(i32 %11)
  store %struct.nl_cb* %12, %struct.nl_cb** %9, align 8
  %13 = load %struct.unl*, %struct.unl** %5, align 8
  %14 = getelementptr inbounds %struct.unl, %struct.unl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %17 = call i32 @nl_send_auto_complete(i32 %15, %struct.nl_msg* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %60

21:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  %22 = load %struct.nl_cb*, %struct.nl_cb** %9, align 8
  %23 = load i32, i32* @NL_CB_CUSTOM, align 4
  %24 = load i32, i32* @error_handler, align 4
  %25 = call i32 @nl_cb_err(%struct.nl_cb* %22, i32 %23, i32 %24, i32* %10)
  %26 = load %struct.nl_cb*, %struct.nl_cb** %9, align 8
  %27 = load i32, i32* @NL_CB_FINISH, align 4
  %28 = load i32, i32* @NL_CB_CUSTOM, align 4
  %29 = load i32, i32* @finish_handler, align 4
  %30 = sext i32 %29 to i64
  %31 = bitcast i32* %10 to i8*
  %32 = call i32 @nl_cb_set(%struct.nl_cb* %26, i32 %27, i32 %28, i64 %30, i8* %31)
  %33 = load %struct.nl_cb*, %struct.nl_cb** %9, align 8
  %34 = load i32, i32* @NL_CB_ACK, align 4
  %35 = load i32, i32* @NL_CB_CUSTOM, align 4
  %36 = load i32, i32* @ack_handler, align 4
  %37 = sext i32 %36 to i64
  %38 = bitcast i32* %10 to i8*
  %39 = call i32 @nl_cb_set(%struct.nl_cb* %33, i32 %34, i32 %35, i64 %37, i8* %38)
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %21
  %43 = load %struct.nl_cb*, %struct.nl_cb** %9, align 8
  %44 = load i32, i32* @NL_CB_VALID, align 4
  %45 = load i32, i32* @NL_CB_CUSTOM, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @nl_cb_set(%struct.nl_cb* %43, i32 %44, i32 %45, i64 %46, i8* %47)
  br label %49

49:                                               ; preds = %42, %21
  br label %50

50:                                               ; preds = %53, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.unl*, %struct.unl** %5, align 8
  %55 = getelementptr inbounds %struct.unl, %struct.unl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nl_cb*, %struct.nl_cb** %9, align 8
  %58 = call i32 @nl_recvmsgs(i32 %56, %struct.nl_cb* %57)
  br label %50

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %20
  %61 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %62 = call i32 @nlmsg_free(%struct.nl_msg* %61)
  %63 = load %struct.nl_cb*, %struct.nl_cb** %9, align 8
  %64 = call i32 @nl_cb_put(%struct.nl_cb* %63)
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local %struct.nl_cb* @nl_cb_alloc(i32) #1

declare dso_local i32 @nl_send_auto_complete(i32, %struct.nl_msg*) #1

declare dso_local i32 @nl_cb_err(%struct.nl_cb*, i32, i32, i32*) #1

declare dso_local i32 @nl_cb_set(%struct.nl_cb*, i32, i32, i64, i8*) #1

declare dso_local i32 @nl_recvmsgs(i32, %struct.nl_cb*) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

declare dso_local i32 @nl_cb_put(%struct.nl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
