; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_parse_cb.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_msg.c_parse_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_object = type { i32 }
%struct.nl_parser_param = type { %struct.dp_xdata* }
%struct.dp_xdata = type { i32, i32 (%struct.nl_object*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_object*, %struct.nl_parser_param*)* @parse_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cb(%struct.nl_object* %0, %struct.nl_parser_param* %1) #0 {
  %3 = alloca %struct.nl_object*, align 8
  %4 = alloca %struct.nl_parser_param*, align 8
  %5 = alloca %struct.dp_xdata*, align 8
  store %struct.nl_object* %0, %struct.nl_object** %3, align 8
  store %struct.nl_parser_param* %1, %struct.nl_parser_param** %4, align 8
  %6 = load %struct.nl_parser_param*, %struct.nl_parser_param** %4, align 8
  %7 = getelementptr inbounds %struct.nl_parser_param, %struct.nl_parser_param* %6, i32 0, i32 0
  %8 = load %struct.dp_xdata*, %struct.dp_xdata** %7, align 8
  store %struct.dp_xdata* %8, %struct.dp_xdata** %5, align 8
  %9 = load %struct.dp_xdata*, %struct.dp_xdata** %5, align 8
  %10 = getelementptr inbounds %struct.dp_xdata, %struct.dp_xdata* %9, i32 0, i32 1
  %11 = load i32 (%struct.nl_object*, i32)*, i32 (%struct.nl_object*, i32)** %10, align 8
  %12 = load %struct.nl_object*, %struct.nl_object** %3, align 8
  %13 = load %struct.dp_xdata*, %struct.dp_xdata** %5, align 8
  %14 = getelementptr inbounds %struct.dp_xdata, %struct.dp_xdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %11(%struct.nl_object* %12, i32 %15)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
