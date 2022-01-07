; ModuleID = '/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_ersatz_socketpair_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_ersatz_socketpair_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_ersatz_socketpair_(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sockaddr_in, align 8
  %14 = alloca %struct.sockaddr_in, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64 -1, i64* %10, align 8
  store i64 -1, i64* %11, align 8
  store i64 -1, i64* %12, align 8
  store i32 -1, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @AF_INET, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %4
  %28 = load i32, i32* @EAFNOSUPPORT, align 4
  %29 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %28)
  store i32 -1, i32* %5, align 4
  br label %167

30:                                               ; preds = %24
  %31 = load i64*, i64** %9, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %34)
  store i32 -1, i32* %5, align 4
  br label %167

36:                                               ; preds = %30
  %37 = load i32, i32* @AF_INET, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @socket(i32 %37, i32 %38, i32 0)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %167

43:                                               ; preds = %36
  %44 = call i32 @memset(%struct.sockaddr_in* %13, i32 0, i32 24)
  %45 = load i32, i32* @AF_INET, align 4
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* @INADDR_LOOPBACK, align 4
  %48 = call i64 @htonl(i32 %47)
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %54 = call i32 @bind(i64 %52, %struct.sockaddr* %53, i32 24)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %141

57:                                               ; preds = %43
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @listen(i64 %58, i32 1)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %141

62:                                               ; preds = %57
  %63 = load i32, i32* @AF_INET, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @socket(i32 %63, i32 %64, i32 0)
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %141

69:                                               ; preds = %62
  %70 = call i32 @memset(%struct.sockaddr_in* %14, i32 0, i32 24)
  store i32 24, i32* %15, align 4
  %71 = load i64, i64* %10, align 8
  %72 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %73 = call i32 @getsockname(i64 %71, %struct.sockaddr* %72, i32* %15)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %141

76:                                               ; preds = %69
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %78, 24
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %139

81:                                               ; preds = %76
  %82 = load i64, i64* %11, align 8
  %83 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %84 = call i32 @connect(i64 %82, %struct.sockaddr* %83, i32 24)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %141

87:                                               ; preds = %81
  store i32 24, i32* %15, align 4
  %88 = load i64, i64* %10, align 8
  %89 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %90 = call i64 @accept(i64 %88, %struct.sockaddr* %89, i32* %15)
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %12, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %141

94:                                               ; preds = %87
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %96, 24
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %139

99:                                               ; preds = %94
  %100 = load i64, i64* %11, align 8
  %101 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %102 = call i32 @getsockname(i64 %100, %struct.sockaddr* %101, i32* %15)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %141

105:                                              ; preds = %99
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp ne i64 %107, 24
  br i1 %108, label %129, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %129, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123, %115, %109, %105
  br label %139

130:                                              ; preds = %123
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @evutil_closesocket(i64 %131)
  %133 = load i64, i64* %11, align 8
  %134 = load i64*, i64** %9, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 0
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load i64*, i64** %9, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 1
  store i64 %136, i64* %138, align 8
  store i32 0, i32* %5, align 4
  br label %167

139:                                              ; preds = %129, %98, %80
  %140 = load i32, i32* @ECONNABORTED, align 4
  store i32 %140, i32* %16, align 4
  br label %141

141:                                              ; preds = %139, %104, %93, %86, %75, %68, %61, %56
  %142 = load i32, i32* %16, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 (...) @EVUTIL_SOCKET_ERROR()
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %144, %141
  %147 = load i64, i64* %10, align 8
  %148 = icmp ne i64 %147, -1
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i64, i64* %10, align 8
  %151 = call i32 @evutil_closesocket(i64 %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i64, i64* %11, align 8
  %154 = icmp ne i64 %153, -1
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i64, i64* %11, align 8
  %157 = call i32 @evutil_closesocket(i64 %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i64, i64* %12, align 8
  %160 = icmp ne i64 %159, -1
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i64, i64* %12, align 8
  %163 = call i32 @evutil_closesocket(i64 %162)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %16, align 4
  %166 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %165)
  store i32 -1, i32* %5, align 4
  br label %167

167:                                              ; preds = %164, %130, %42, %33, %27
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @EVUTIL_SET_SOCKET_ERROR(i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @listen(i64, i32) #1

declare dso_local i32 @getsockname(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @accept(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i32 @EVUTIL_SOCKET_ERROR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
