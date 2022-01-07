; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_util.c_regress_sockaddr_port_parse.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_util.c_regress_sockaddr_port_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_port_ent = type { i64, i64, i32, i32 }
%struct.sockaddr_storage = type { i32, i32, i32, i8*, i64, i32, i8*, i64 }
%struct.sockaddr_in = type { i32, i32, i32, i8*, i64, i32, i8*, i64 }
%struct.sockaddr_in6 = type { i32, i32, i32, i8*, i64, i32, i8*, i64 }
%struct.sockaddr = type { i32 }

@sa_port_ents = common dso_local global %struct.sa_port_ent* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Couldn't parse %s!\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Shouldn't have been able to parse %s!\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Couldn't parse ipv4 target %s.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Parse for %s was not as expected.\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Length for %s not as expected.\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Couldn't parse ipv6 target %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @regress_sockaddr_port_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regress_sockaddr_port_parse(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sockaddr_storage, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sa_port_ent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca %struct.sockaddr_in6, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %158, %1
  %11 = load %struct.sa_port_ent*, %struct.sa_port_ent** @sa_port_ents, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %11, i64 %13
  %15 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %161

18:                                               ; preds = %10
  %19 = load %struct.sa_port_ent*, %struct.sa_port_ent** @sa_port_ents, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %19, i64 %21
  store %struct.sa_port_ent* %22, %struct.sa_port_ent** %6, align 8
  store i32 56, i32* %7, align 4
  %23 = call i32 @memset(%struct.sockaddr_storage* %3, i32 0, i32 56)
  %24 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %25 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = bitcast %struct.sockaddr_storage* %3 to %struct.sockaddr*
  %28 = call i32 @evutil_parse_sockaddr_port(i64 %26, %struct.sockaddr* %27, i32* %7)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %18
  %32 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %33 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %38 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @TT_FAIL(i8* %40)
  br label %42

42:                                               ; preds = %36, %31
  br label %158

43:                                               ; preds = %18
  %44 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %45 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %50 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @TT_FAIL(i8* %52)
  br label %158

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %57 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AF_INET, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %109

61:                                               ; preds = %55
  %62 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr_storage*
  %63 = call i32 @memset(%struct.sockaddr_storage* %62, i32 0, i32 56)
  %64 = load i64, i64* @AF_INET, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 7
  store i64 %64, i64* %65, align 8
  %66 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %67 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @htons(i32 %68)
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 6
  store i8* %69, i8** %70, align 8
  %71 = load i64, i64* @AF_INET, align 8
  %72 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %73 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 5
  %76 = call i32 @evutil_inet_pton(i64 %71, i32 %74, i32* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 1, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %61
  %80 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %81 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @TT_FAIL(i8* %84)
  br label %108

86:                                               ; preds = %61
  %87 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr_storage*
  %88 = call i64 @memcmp(%struct.sockaddr_storage* %87, %struct.sockaddr_storage* %3, i32 56)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %92 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 @TT_FAIL(i8* %94)
  br label %107

96:                                               ; preds = %86
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp ne i64 %98, 56
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %102 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @TT_FAIL(i8* %104)
  br label %106

106:                                              ; preds = %100, %96
  br label %107

107:                                              ; preds = %106, %90
  br label %108

108:                                              ; preds = %107, %79
  br label %157

109:                                              ; preds = %55
  %110 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr_storage*
  %111 = call i32 @memset(%struct.sockaddr_storage* %110, i32 0, i32 56)
  %112 = load i64, i64* @AF_INET6, align 8
  %113 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 4
  store i64 %112, i64* %113, align 8
  %114 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %115 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @htons(i32 %116)
  %118 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 3
  store i8* %117, i8** %118, align 8
  %119 = load i64, i64* @AF_INET6, align 8
  %120 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %121 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 2
  %124 = call i32 @evutil_inet_pton(i64 %119, i32 %122, i32* %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 1, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %109
  %128 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %129 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 @TT_FAIL(i8* %132)
  br label %156

134:                                              ; preds = %109
  %135 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr_storage*
  %136 = call i64 @memcmp(%struct.sockaddr_storage* %135, %struct.sockaddr_storage* %3, i32 56)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %140 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @TT_FAIL(i8* %142)
  br label %155

144:                                              ; preds = %134
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = icmp ne i64 %146, 56
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = load %struct.sa_port_ent*, %struct.sa_port_ent** %6, align 8
  %150 = getelementptr inbounds %struct.sa_port_ent, %struct.sa_port_ent* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = call i32 @TT_FAIL(i8* %152)
  br label %154

154:                                              ; preds = %148, %144
  br label %155

155:                                              ; preds = %154, %138
  br label %156

156:                                              ; preds = %155, %127
  br label %157

157:                                              ; preds = %156, %108
  br label %158

158:                                              ; preds = %157, %48, %42
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %10

161:                                              ; preds = %10
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @evutil_parse_sockaddr_port(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @TT_FAIL(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @evutil_inet_pton(i64, i32, i32*) #1

declare dso_local i64 @memcmp(%struct.sockaddr_storage*, %struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
