; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_resolv_conf_parse_impl.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_resolv_conf_parse_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@EVDNS_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Parsing resolv.conf file %s\00", align 1
@DNS_OPTION_NAMESERVERS = common dso_local global i32 0, align 4
@DNS_OPTION_NAMESERVERS_NO_DEFAULT = common dso_local global i32 0, align 4
@DNS_OPTION_HOSTSFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@DNS_OPTION_SEARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdns_base*, i32, i8*)* @evdns_base_resolv_conf_parse_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_base_resolv_conf_parse_impl(%struct.evdns_base* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evdns_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @log(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DNS_OPTION_NAMESERVERS, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DNS_OPTION_NAMESERVERS_NO_DEFAULT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DNS_OPTION_HOSTSFILE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = call i8* (...) @evdns_get_default_hosts_filename()
  store i8* %32, i8** %13, align 8
  %33 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @evdns_base_load_hosts(%struct.evdns_base* %33, i8* %34)
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @mm_free(i8* %39)
  br label %41

41:                                               ; preds = %38, %31
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @evdns_resolv_set_defaults(%struct.evdns_base* %46, i32 %47)
  store i32 1, i32* %4, align 4
  br label %117

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @evutil_read_file_(i8* %50, i8** %9, i64* %8, i32 0)
  store i32 %51, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @evdns_resolv_set_defaults(%struct.evdns_base* %57, i32 %58)
  store i32 1, i32* %4, align 4
  br label %117

60:                                               ; preds = %53
  store i32 2, i32* %4, align 4
  br label %117

61:                                               ; preds = %49
  %62 = load i8*, i8** %9, align 8
  store i8* %62, i8** %10, align 8
  br label %63

63:                                               ; preds = %81, %61
  %64 = load i8*, i8** %10, align 8
  %65 = call i8* @strchr(i8* %64, i8 signext 10)
  store i8* %65, i8** %14, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @resolv_conf_parse_line(%struct.evdns_base* %69, i8* %70, i32 %71)
  br label %82

73:                                               ; preds = %63
  %74 = load i8*, i8** %14, align 8
  store i8 0, i8* %74, align 1
  %75 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @resolv_conf_parse_line(%struct.evdns_base* %75, i8* %76, i32 %77)
  %79 = load i8*, i8** %14, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %10, align 8
  br label %81

81:                                               ; preds = %73
  br label %63

82:                                               ; preds = %68
  %83 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %84 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %92 = call i32 @evdns_base_nameserver_ip_add(%struct.evdns_base* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 6, i32* %11, align 4
  br label %93

93:                                               ; preds = %90, %87, %82
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @DNS_OPTION_SEARCH, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %100 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = icmp ne %struct.TYPE_2__* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %105 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103, %98
  %111 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %112 = call i32 @search_set_from_hostname(%struct.evdns_base* %111)
  br label %113

113:                                              ; preds = %110, %103, %93
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @mm_free(i8* %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %113, %60, %56, %45
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @log(i32, i8*, i8*) #1

declare dso_local i8* @evdns_get_default_hosts_filename(...) #1

declare dso_local i32 @evdns_base_load_hosts(%struct.evdns_base*, i8*) #1

declare dso_local i32 @mm_free(i8*) #1

declare dso_local i32 @evdns_resolv_set_defaults(%struct.evdns_base*, i32) #1

declare dso_local i32 @evutil_read_file_(i8*, i8**, i64*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @resolv_conf_parse_line(%struct.evdns_base*, i8*, i32) #1

declare dso_local i32 @evdns_base_nameserver_ip_add(%struct.evdns_base*, i8*) #1

declare dso_local i32 @search_set_from_hostname(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
