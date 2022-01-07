; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl_mngt.c_genl_msg_parser.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl_mngt.c_genl_msg_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cache_ops = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.genl_cmd* }
%struct.genl_cmd = type { i64, i32 (%struct.nl_cache_ops*, %struct.genl_cmd*, %struct.genl_info*, %struct.nl_parser_param*)*, i32, i32 }
%struct.genl_info = type { %struct.nlattr**, i32, %struct.genlmsghdr*, %struct.nlmsghdr*, %struct.sockaddr_nl* }
%struct.nlattr = type { i32 }
%struct.genlmsghdr = type { i64 }
%struct.sockaddr_nl = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nl_parser_param = type { i32 }

@NLE_MSGTYPE_NOSUPPORT = common dso_local global i32 0, align 4
@NLE_OPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_cache_ops*, %struct.sockaddr_nl*, %struct.nlmsghdr*, %struct.nl_parser_param*)* @genl_msg_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genl_msg_parser(%struct.nl_cache_ops* %0, %struct.sockaddr_nl* %1, %struct.nlmsghdr* %2, %struct.nl_parser_param* %3) #0 {
  %5 = alloca %struct.nl_cache_ops*, align 8
  %6 = alloca %struct.sockaddr_nl*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.nl_parser_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.genlmsghdr*, align 8
  %12 = alloca %struct.genl_cmd*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.genl_info, align 8
  %16 = alloca i32, align 4
  store %struct.nl_cache_ops* %0, %struct.nl_cache_ops** %5, align 8
  store %struct.sockaddr_nl* %1, %struct.sockaddr_nl** %6, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %7, align 8
  store %struct.nl_parser_param* %3, %struct.nl_parser_param** %8, align 8
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %18 = call %struct.genlmsghdr* @nlmsg_data(%struct.nlmsghdr* %17)
  store %struct.genlmsghdr* %18, %struct.genlmsghdr** %11, align 8
  %19 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %5, align 8
  %20 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp eq %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = call i32 (...) @BUG()
  br label %25

25:                                               ; preds = %23, %4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %5, align 8
  %29 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %26
  %35 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %5, align 8
  %36 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.genl_cmd*, %struct.genl_cmd** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.genl_cmd, %struct.genl_cmd* %39, i64 %41
  store %struct.genl_cmd* %42, %struct.genl_cmd** %12, align 8
  %43 = load %struct.genl_cmd*, %struct.genl_cmd** %12, align 8
  %44 = getelementptr inbounds %struct.genl_cmd, %struct.genl_cmd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.genlmsghdr*, %struct.genlmsghdr** %11, align 8
  %47 = getelementptr inbounds %struct.genlmsghdr, %struct.genlmsghdr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %58

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %26

55:                                               ; preds = %26
  %56 = load i32, i32* @NLE_MSGTYPE_NOSUPPORT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %111

58:                                               ; preds = %50
  %59 = load %struct.genl_cmd*, %struct.genl_cmd** %12, align 8
  %60 = getelementptr inbounds %struct.genl_cmd, %struct.genl_cmd* %59, i32 0, i32 1
  %61 = load i32 (%struct.nl_cache_ops*, %struct.genl_cmd*, %struct.genl_info*, %struct.nl_parser_param*)*, i32 (%struct.nl_cache_ops*, %struct.genl_cmd*, %struct.genl_info*, %struct.nl_parser_param*)** %60, align 8
  %62 = icmp eq i32 (%struct.nl_cache_ops*, %struct.genl_cmd*, %struct.genl_info*, %struct.nl_parser_param*)* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @NLE_OPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %110

66:                                               ; preds = %58
  %67 = load %struct.genl_cmd*, %struct.genl_cmd** %12, align 8
  %68 = getelementptr inbounds %struct.genl_cmd, %struct.genl_cmd* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %13, align 8
  %73 = alloca %struct.nlattr*, i64 %71, align 16
  store i64 %71, i64* %14, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  store %struct.nlattr** %73, %struct.nlattr*** %74, align 8
  %75 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 1
  %76 = load %struct.genlmsghdr*, %struct.genlmsghdr** %11, align 8
  %77 = call i32 @genlmsg_data(%struct.genlmsghdr* %76)
  store i32 %77, i32* %75, align 8
  %78 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 2
  %79 = load %struct.genlmsghdr*, %struct.genlmsghdr** %11, align 8
  store %struct.genlmsghdr* %79, %struct.genlmsghdr** %78, align 8
  %80 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 3
  %81 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  store %struct.nlmsghdr* %81, %struct.nlmsghdr** %80, align 8
  %82 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 4
  %83 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %6, align 8
  store %struct.sockaddr_nl* %83, %struct.sockaddr_nl** %82, align 8
  %84 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %85 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %5, align 8
  %86 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.genl_cmd*, %struct.genl_cmd** %12, align 8
  %89 = getelementptr inbounds %struct.genl_cmd, %struct.genl_cmd* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.genl_cmd*, %struct.genl_cmd** %12, align 8
  %92 = getelementptr inbounds %struct.genl_cmd, %struct.genl_cmd* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @nlmsg_parse(%struct.nlmsghdr* %84, i32 %87, %struct.nlattr** %73, i32 %90, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %66
  store i32 6, i32* %16, align 4
  br label %106

98:                                               ; preds = %66
  %99 = load %struct.genl_cmd*, %struct.genl_cmd** %12, align 8
  %100 = getelementptr inbounds %struct.genl_cmd, %struct.genl_cmd* %99, i32 0, i32 1
  %101 = load i32 (%struct.nl_cache_ops*, %struct.genl_cmd*, %struct.genl_info*, %struct.nl_parser_param*)*, i32 (%struct.nl_cache_ops*, %struct.genl_cmd*, %struct.genl_info*, %struct.nl_parser_param*)** %100, align 8
  %102 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %5, align 8
  %103 = load %struct.genl_cmd*, %struct.genl_cmd** %12, align 8
  %104 = load %struct.nl_parser_param*, %struct.nl_parser_param** %8, align 8
  %105 = call i32 %101(%struct.nl_cache_ops* %102, %struct.genl_cmd* %103, %struct.genl_info* %15, %struct.nl_parser_param* %104)
  store i32 %105, i32* %10, align 4
  store i32 0, i32* %16, align 4
  br label %106

106:                                              ; preds = %97, %98
  %107 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %16, align 4
  switch i32 %108, label %113 [
    i32 0, label %109
    i32 6, label %111
  ]

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %109, %63
  br label %111

111:                                              ; preds = %110, %106, %55
  %112 = load i32, i32* %10, align 4
  ret i32 %112

113:                                              ; preds = %106
  unreachable
}

declare dso_local %struct.genlmsghdr* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @BUG(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @genlmsg_data(%struct.genlmsghdr*) #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
