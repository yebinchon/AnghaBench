; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_nl_cache_parse_and_add.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_nl_cache_parse_and_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cache = type { i32 }
%struct.nl_msg = type { i32 }
%struct.nl_parser_param = type { %struct.nl_cache*, i32 }

@pickup_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_cache_parse_and_add(%struct.nl_cache* %0, %struct.nl_msg* %1) #0 {
  %3 = alloca %struct.nl_cache*, align 8
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca %struct.nl_parser_param, align 8
  store %struct.nl_cache* %0, %struct.nl_cache** %3, align 8
  store %struct.nl_msg* %1, %struct.nl_msg** %4, align 8
  %6 = getelementptr inbounds %struct.nl_parser_param, %struct.nl_parser_param* %5, i32 0, i32 0
  %7 = load %struct.nl_cache*, %struct.nl_cache** %3, align 8
  store %struct.nl_cache* %7, %struct.nl_cache** %6, align 8
  %8 = getelementptr inbounds %struct.nl_parser_param, %struct.nl_parser_param* %5, i32 0, i32 1
  %9 = load i32, i32* @pickup_cb, align 4
  store i32 %9, i32* %8, align 8
  %10 = load %struct.nl_cache*, %struct.nl_cache** %3, align 8
  %11 = getelementptr inbounds %struct.nl_cache, %struct.nl_cache* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %14 = call i32 @nlmsg_hdr(%struct.nl_msg* %13)
  %15 = call i32 @nl_cache_parse(i32 %12, i32* null, i32 %14, %struct.nl_parser_param* %5)
  ret i32 %15
}

declare dso_local i32 @nl_cache_parse(i32, i32*, i32, %struct.nl_parser_param*) #1

declare dso_local i32 @nlmsg_hdr(%struct.nl_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
