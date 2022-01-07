; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gholder.c_add_host_to_holder.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gholder.c_add_host_to_holder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.in6_addr = type { i32, i32* }
%struct.in_addr = type { i32, i32* }

@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"255.255.255.0\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ffff:ffff:ffff:ffff:0000:0000:0000:0000\00", align 1
@conf = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, i32, i32*)* @add_host_to_holder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_host_to_holder(i32 %0, %struct.TYPE_6__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.in6_addr, align 8
  %16 = alloca %struct.in6_addr, align 8
  %17 = alloca %struct.in6_addr, align 8
  %18 = alloca %struct.in_addr, align 8
  %19 = alloca %struct.in_addr, align 8
  %20 = alloca %struct.in_addr, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %24 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @set_data_hits_keys(i32 %33, i32 %34, i32 %35, i8** %12, i32* %13)
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  store i32 1, i32* %23, align 4
  br label %139

39:                                               ; preds = %4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @conf, i32 0, i32 0), align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @add_data_to_holder(i32 %43, %struct.TYPE_6__* %44, i32 %45, i32* %46)
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @free(i8* %48)
  store i32 1, i32* %23, align 4
  br label %139

50:                                               ; preds = %39
  %51 = load i32, i32* @AF_INET, align 4
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @inet_pton(i32 %51, i8* %52, %struct.in_addr* %18)
  %54 = icmp eq i32 1, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  %56 = load i32, i32* @AF_INET, align 4
  %57 = load i8*, i8** %21, align 8
  %58 = call i32 @inet_pton(i32 %56, i8* %57, %struct.in_addr* %19)
  %59 = icmp eq i32 1, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %55
  %61 = call i32 @memset(i8* %27, i32 0, i32 1)
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %63, %65
  %67 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* @AF_INET, align 4
  %69 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %70 = call i32* @inet_ntop(i32 %68, %struct.in_addr* %20, i8* %27, i32 %69)
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %60
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @set_host(i32 %73, %struct.TYPE_6__* %74, i32* %75, i8* %27, i32 %76)
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %72, %60
  br label %81

81:                                               ; preds = %80, %55
  br label %138

82:                                               ; preds = %50
  %83 = load i32, i32* @AF_INET6, align 4
  %84 = load i8*, i8** %12, align 8
  %85 = bitcast %struct.in6_addr* %15 to %struct.in_addr*
  %86 = call i32 @inet_pton(i32 %83, i8* %84, %struct.in_addr* %85)
  %87 = icmp eq i32 1, %86
  br i1 %87, label %88, label %137

88:                                               ; preds = %82
  %89 = load i32, i32* @AF_INET6, align 4
  %90 = load i8*, i8** %22, align 8
  %91 = bitcast %struct.in6_addr* %16 to %struct.in_addr*
  %92 = call i32 @inet_pton(i32 %89, i8* %90, %struct.in_addr* %91)
  %93 = icmp eq i32 1, %92
  br i1 %93, label %94, label %136

94:                                               ; preds = %88
  %95 = call i32 @memset(i8* %30, i32 0, i32 1)
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %118, %94
  %97 = load i32, i32* %14, align 4
  %98 = icmp ult i32 %97, 16
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %15, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %105, %111
  %113 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %17, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %99
  %119 = load i32, i32* %14, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %96

121:                                              ; preds = %96
  %122 = load i32, i32* @AF_INET6, align 4
  %123 = bitcast %struct.in6_addr* %17 to %struct.in_addr*
  %124 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %125 = call i32* @inet_ntop(i32 %122, %struct.in_addr* %123, i8* %30, i32 %124)
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @set_host(i32 %128, %struct.TYPE_6__* %129, i32* %130, i8* %30, i32 %131)
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @free(i8* %133)
  br label %135

135:                                              ; preds = %127, %121
  br label %136

136:                                              ; preds = %135, %88
  br label %137

137:                                              ; preds = %136, %82
  br label %138

138:                                              ; preds = %137, %81
  store i32 0, i32* %23, align 4
  br label %139

139:                                              ; preds = %138, %42, %38
  %140 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %23, align 4
  switch i32 %141, label %143 [
    i32 0, label %142
    i32 1, label %142
  ]

142:                                              ; preds = %139, %139
  ret void

143:                                              ; preds = %139
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @set_data_hits_keys(i32, i32, i32, i8**, i32*) #2

declare dso_local i32 @add_data_to_holder(i32, %struct.TYPE_6__*, i32, i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @inet_pton(i32, i8*, %struct.in_addr*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32* @inet_ntop(i32, %struct.in_addr*, i8*, i32) #2

declare dso_local i32 @set_host(i32, %struct.TYPE_6__*, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
