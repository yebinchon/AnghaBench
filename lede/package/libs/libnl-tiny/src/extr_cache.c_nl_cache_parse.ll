; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_nl_cache_parse.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_nl_cache_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cache_ops = type { {}*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_nl = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.nl_parser_param = type { i32 }

@NLE_MSG_TOOSHORT = common dso_local global i32 0, align 4
@NLE_OPNOTSUPP = common dso_local global i32 0, align 4
@NLE_MSGTYPE_NOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_cache_parse(%struct.nl_cache_ops* %0, %struct.sockaddr_nl* %1, %struct.nlmsghdr* %2, %struct.nl_parser_param* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nl_cache_ops*, align 8
  %7 = alloca %struct.sockaddr_nl*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nl_parser_param*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nl_cache_ops* %0, %struct.nl_cache_ops** %6, align 8
  store %struct.sockaddr_nl* %1, %struct.sockaddr_nl** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nl_parser_param* %3, %struct.nl_parser_param** %9, align 8
  %12 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %13 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %6, align 8
  %14 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @nlmsg_valid_hdr(%struct.nlmsghdr* %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @NLE_MSG_TOOSHORT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %70

21:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %62, %21
  %23 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %6, align 8
  %24 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %22
  %33 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %6, align 8
  %34 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %42 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %32
  %46 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %6, align 8
  %47 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %46, i32 0, i32 0
  %48 = bitcast {}** %47 to i32 (%struct.nl_cache_ops*, %struct.sockaddr_nl*, %struct.nlmsghdr*, %struct.nl_parser_param*)**
  %49 = load i32 (%struct.nl_cache_ops*, %struct.sockaddr_nl*, %struct.nlmsghdr*, %struct.nl_parser_param*)*, i32 (%struct.nl_cache_ops*, %struct.sockaddr_nl*, %struct.nlmsghdr*, %struct.nl_parser_param*)** %48, align 8
  %50 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %6, align 8
  %51 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %7, align 8
  %52 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %53 = load %struct.nl_parser_param*, %struct.nl_parser_param** %9, align 8
  %54 = call i32 %49(%struct.nl_cache_ops* %50, %struct.sockaddr_nl* %51, %struct.nlmsghdr* %52, %struct.nl_parser_param* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @NLE_OPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %68

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %32
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %22

65:                                               ; preds = %22
  %66 = load i32, i32* @NLE_MSGTYPE_NOSUPPORT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %18
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @nlmsg_valid_hdr(%struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
