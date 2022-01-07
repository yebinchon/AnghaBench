; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_util.c_test_parse_proxy_line.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_util.c_test_parse_proxy_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_in6 = type { i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"PROXY TCP4 192.168.0.1 192.168.0.11 56324 443\0D\0Aabc\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"PROXY TCP4 192.168.0.1 192.168.0.11 56324 443\0D\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"PROXY TCP5\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"PROXY UNKNOWN\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"PROXY UNKNOWN\0D\0Aabc\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"PROXY TCP6 ::1 ::1 56324 443\0D\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parse_proxy_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parse_proxy_line() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca %struct.sockaddr_storage, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %6 = call i32 @strcpy(i8* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %9 = call i32 @strlen(i8* %8)
  %10 = bitcast %struct.sockaddr_storage* %2 to i8*
  %11 = call i32 @parse_proxy_line(i8* %7, i32 %9, i8* %10, i32* %3)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, -2
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14)
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %17 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %20 = call i32 @strlen(i8* %19)
  %21 = bitcast %struct.sockaddr_storage* %2 to i8*
  %22 = call i32 @parse_proxy_line(i8* %18, i32 %20, i8* %21, i32* %3)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %25 = call i32 @strlen(i8* %24)
  %26 = sub nsw i32 %25, 3
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %31, 16
  %33 = zext i1 %32 to i32
  %34 = call i32 @ok(i32 %33)
  %35 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %2, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AF_INET, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39)
  %41 = bitcast %struct.sockaddr_storage* %2 to %struct.sockaddr_in*
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @htonl(i32 -1062731775)
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @ok(i32 %47)
  %49 = bitcast %struct.sockaddr_storage* %2 to %struct.sockaddr_in*
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @htons(i32 56324)
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54)
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %57 = call i32 @strcpy(i8* %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %60 = call i32 @strlen(i8* %59)
  %61 = bitcast %struct.sockaddr_storage* %2 to i8*
  %62 = call i32 @parse_proxy_line(i8* %58, i32 %60, i8* %61, i32* %3)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, -2
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65)
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %68 = call i32 @strcpy(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %71 = call i32 @strlen(i8* %70)
  %72 = bitcast %struct.sockaddr_storage* %2 to i8*
  %73 = call i32 @parse_proxy_line(i8* %69, i32 %71, i8* %72, i32* %3)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, -1
  %76 = zext i1 %75 to i32
  %77 = call i32 @ok(i32 %76)
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %79 = call i32 @strcpy(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %82 = call i32 @strlen(i8* %81)
  %83 = bitcast %struct.sockaddr_storage* %2 to i8*
  %84 = call i32 @parse_proxy_line(i8* %80, i32 %82, i8* %83, i32* %3)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, -2
  %87 = zext i1 %86 to i32
  %88 = call i32 @ok(i32 %87)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %90 = call i32 @strcpy(i8* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %93 = call i32 @strlen(i8* %92)
  %94 = bitcast %struct.sockaddr_storage* %2 to i8*
  %95 = call i32 @parse_proxy_line(i8* %91, i32 %93, i8* %94, i32* %3)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %98 = call i32 @strlen(i8* %97)
  %99 = sub nsw i32 %98, 3
  %100 = icmp eq i32 %96, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ok(i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @ok(i32 %105)
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %108 = call i32 @strcpy(i8* %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %111 = call i32 @strlen(i8* %110)
  %112 = bitcast %struct.sockaddr_storage* %2 to i8*
  %113 = call i32 @parse_proxy_line(i8* %109, i32 %111, i8* %112, i32* %3)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %116 = call i32 @strlen(i8* %115)
  %117 = icmp eq i32 %114, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @ok(i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp eq i64 %121, 16
  %123 = zext i1 %122 to i32
  %124 = call i32 @ok(i32 %123)
  %125 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %2, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AF_INET6, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @ok(i32 %129)
  %131 = bitcast %struct.sockaddr_storage* %2 to %struct.sockaddr_in6*
  %132 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %131, i32 0, i32 1
  %133 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %134 = call i64 @memcmp(i32* %132, i32 %133)
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @ok(i32 %136)
  %138 = bitcast %struct.sockaddr_storage* %2 to %struct.sockaddr_in6*
  %139 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @htons(i32 56324)
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @ok(i32 %143)
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @parse_proxy_line(i8*, i32, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @memcmp(i32*, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
