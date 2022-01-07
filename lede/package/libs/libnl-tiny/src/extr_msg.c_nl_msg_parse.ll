; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nl_msg_parse.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_nl_msg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.nl_object = type opaque
%struct.nl_cache_ops = type { i32 }
%struct.nl_parser_param = type { %struct.dp_xdata*, i32 }
%struct.dp_xdata = type { void (%struct.nl_object.0*, i8*)*, i8* }
%struct.nl_object.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@parse_cb = common dso_local global i32 0, align 4
@NLE_MSGTYPE_NOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_msg_parse(%struct.nl_msg* %0, void (%struct.nl_object*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nl_msg*, align 8
  %6 = alloca void (%struct.nl_object*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nl_cache_ops*, align 8
  %9 = alloca %struct.nl_parser_param, align 8
  %10 = alloca %struct.dp_xdata, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %5, align 8
  store void (%struct.nl_object*, i8*)* %1, void (%struct.nl_object*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = getelementptr inbounds %struct.nl_parser_param, %struct.nl_parser_param* %9, i32 0, i32 0
  store %struct.dp_xdata* null, %struct.dp_xdata** %11, align 8
  %12 = getelementptr inbounds %struct.nl_parser_param, %struct.nl_parser_param* %9, i32 0, i32 1
  %13 = load i32, i32* @parse_cb, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.dp_xdata, %struct.dp_xdata* %10, i32 0, i32 0
  %15 = load void (%struct.nl_object*, i8*)*, void (%struct.nl_object*, i8*)** %6, align 8
  %16 = bitcast void (%struct.nl_object*, i8*)* %15 to void (%struct.nl_object.0*, i8*)*
  store void (%struct.nl_object.0*, i8*)* %16, void (%struct.nl_object.0*, i8*)** %14, align 8
  %17 = getelementptr inbounds %struct.dp_xdata, %struct.dp_xdata* %10, i32 0, i32 1
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %17, align 8
  %19 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %20 = call i32 @nlmsg_get_proto(%struct.nl_msg* %19)
  %21 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %22 = call %struct.TYPE_3__* @nlmsg_hdr(%struct.nl_msg* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.nl_cache_ops* @nl_cache_ops_associate(i32 %20, i32 %24)
  store %struct.nl_cache_ops* %25, %struct.nl_cache_ops** %8, align 8
  %26 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %8, align 8
  %27 = icmp eq %struct.nl_cache_ops* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @NLE_MSGTYPE_NOSUPPORT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.nl_parser_param, %struct.nl_parser_param* %9, i32 0, i32 0
  store %struct.dp_xdata* %10, %struct.dp_xdata** %32, align 8
  %33 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %8, align 8
  %34 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %35 = call %struct.TYPE_3__* @nlmsg_hdr(%struct.nl_msg* %34)
  %36 = call i32 @nl_cache_parse(%struct.nl_cache_ops* %33, i32* null, %struct.TYPE_3__* %35, %struct.nl_parser_param* %9)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.nl_cache_ops* @nl_cache_ops_associate(i32, i32) #1

declare dso_local i32 @nlmsg_get_proto(%struct.nl_msg*) #1

declare dso_local %struct.TYPE_3__* @nlmsg_hdr(%struct.nl_msg*) #1

declare dso_local i32 @nl_cache_parse(%struct.nl_cache_ops*, i32*, %struct.TYPE_3__*, %struct.nl_parser_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
