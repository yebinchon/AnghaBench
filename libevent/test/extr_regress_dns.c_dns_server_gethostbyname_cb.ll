; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_dns_server_gethostbyname_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_dns_server_gethostbyname_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@DNS_ERR_CANCEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unexpected cancelation\00", align 1
@dns_ok = common dso_local global i64 0, align 8
@dns_got_cancel = common dso_local global i32 0, align 4
@DNS_ERR_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unexpected result %d. \00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unexpected answer count %d. \00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Bad IPv4 response \22%s\22 %d. \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ZZ.EXAMPLE.COM\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Bad PTR response \22%s\22 %d. \00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ZZ-INET6.EXAMPLE.COM\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Bad ipv6 PTR response \22%s\22 %d. \00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Bad response type %d. \00", align 1
@n_server_responses = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8, i32, i32, i8*, i8*)* @dns_server_gethostbyname_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dns_server_gethostbyname_cb(i32 %0, i8 signext %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.in_addr*, align 8
  %14 = alloca i8**, align 8
  store i32 %0, i32* %7, align 4
  store i8 %1, i8* %8, align 1
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DNS_ERR_CANCEL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %6
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, inttoptr (i64 90909 to i8*)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @dns_ok, align 8
  br label %23

23:                                               ; preds = %21, %18
  store i32 1, i32* @dns_got_cancel, align 4
  br label %105

24:                                               ; preds = %6
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @DNS_ERR_NONE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i64 0, i64* @dns_ok, align 8
  br label %105

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i64 0, i64* @dns_ok, align 8
  br label %105

37:                                               ; preds = %31
  %38 = load i8, i8* %8, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %100 [
    i32 130, label %40
    i32 129, label %61
    i32 128, label %62
  ]

40:                                               ; preds = %37
  %41 = load i8*, i8** %11, align 8
  %42 = bitcast i8* %41 to %struct.in_addr*
  store %struct.in_addr* %42, %struct.in_addr** %13, align 8
  %43 = load %struct.in_addr*, %struct.in_addr** %13, align 8
  %44 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %43, i64 0
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @htonl(i32 -1062728949)
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 12345
  br i1 %51, label %52, label %60

52:                                               ; preds = %49, %40
  %53 = load %struct.in_addr*, %struct.in_addr** %13, align 8
  %54 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %53, i64 0
  %55 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @inet_ntoa(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %57, i32 %58)
  store i64 0, i64* @dns_ok, align 8
  br label %105

60:                                               ; preds = %49
  br label %104

61:                                               ; preds = %37
  br label %104

62:                                               ; preds = %37
  %63 = load i8*, i8** %11, align 8
  %64 = bitcast i8* %63 to i8**
  store i8** %64, i8*** %14, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, inttoptr (i64 6 to i8*)
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load i8**, i8*** %14, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 54321
  br i1 %75, label %76, label %82

76:                                               ; preds = %73, %67
  %77 = load i8**, i8*** %14, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %79, i32 %80)
  store i64 0, i64* @dns_ok, align 8
  br label %105

82:                                               ; preds = %73
  br label %99

83:                                               ; preds = %62
  %84 = load i8**, i8*** %14, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 54322
  br i1 %91, label %92, label %98

92:                                               ; preds = %89, %83
  %93 = load i8**, i8*** %14, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %95, i32 %96)
  store i64 0, i64* @dns_ok, align 8
  br label %105

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %82
  br label %104

100:                                              ; preds = %37
  %101 = load i8, i8* %8, align 1
  %102 = sext i8 %101 to i32
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %102)
  store i64 0, i64* @dns_ok, align 8
  br label %104

104:                                              ; preds = %100, %99, %61, %60
  br label %105

105:                                              ; preds = %104, %92, %76, %52, %34, %28, %23
  %106 = load i32, i32* @n_server_responses, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @n_server_responses, align 4
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 @event_loopexit(i32* null)
  br label %111

111:                                              ; preds = %109, %105
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @event_loopexit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
