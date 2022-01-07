; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_Sys_IsLANAddress.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_Sys_IsLANAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i32*, i32* }
%struct.sockaddr_in = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@NA_LOOPBACK = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@NA_IP = common dso_local global i64 0, align 8
@NA_IP6 = common dso_local global i64 0, align 8
@numIP = common dso_local global i32 0, align 4
@localIP = common dso_local global %struct.TYPE_7__* null, align 8
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sys_IsLANAddress(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NA_LOOPBACK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @qtrue, align 4
  store i32 %15, i32* %2, align 4
  br label %202

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NA_IP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @qtrue, align 4
  store i32 %28, i32* %2, align 4
  br label %202

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 172
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 240
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @qtrue, align 4
  store i32 %43, i32* %2, align 4
  br label %202

44:                                               ; preds = %35, %29
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 192
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 168
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @qtrue, align 4
  store i32 %57, i32* %2, align 4
  br label %202

58:                                               ; preds = %50, %44
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 127
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @qtrue, align 4
  store i32 %65, i32* %2, align 4
  br label %202

66:                                               ; preds = %58
  br label %98

67:                                               ; preds = %16
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NA_IP6, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 254
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 192
  %84 = icmp eq i32 %83, 128
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @qtrue, align 4
  store i32 %86, i32* %2, align 4
  br label %202

87:                                               ; preds = %78, %72
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 254
  %93 = icmp eq i32 %92, 252
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @qtrue, align 4
  store i32 %95, i32* %2, align 4
  br label %202

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %67
  br label %98

98:                                               ; preds = %97, %66
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %197, %98
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @numIP, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %200

103:                                              ; preds = %99
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @localIP, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %196

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NA_IP, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %113
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** @localIP, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = bitcast i32* %123 to %struct.sockaddr_in*
  %125 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32* %126, i32** %9, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** @localIP, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = bitcast i32* %131 to %struct.sockaddr_in*
  %133 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32* %134, i32** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %7, align 8
  store i32 8, i32* %5, align 4
  br label %154

137:                                              ; preds = %113
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** @localIP, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  %143 = bitcast i32* %142 to %struct.sockaddr_in6*
  %144 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %143, i32 0, i32 0
  store i32* %144, i32** %9, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** @localIP, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = bitcast i32* %149 to %struct.sockaddr_in6*
  %151 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %150, i32 0, i32 0
  store i32* %151, i32** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  store i32* %153, i32** %7, align 8
  store i32 8, i32* %5, align 4
  br label %154

154:                                              ; preds = %137, %118
  %155 = load i32, i32* @qfalse, align 4
  store i32 %155, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %187, %154
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %190

160:                                              ; preds = %156
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %165, %170
  %172 = load i32*, i32** %7, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %176, %181
  %183 = icmp ne i32 %171, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %160
  %185 = load i32, i32* @qtrue, align 4
  store i32 %185, i32* %6, align 4
  br label %190

186:                                              ; preds = %160
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %4, align 4
  br label %156

190:                                              ; preds = %184, %156
  %191 = load i32, i32* %6, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* @qtrue, align 4
  store i32 %194, i32* %2, align 4
  br label %202

195:                                              ; preds = %190
  br label %196

196:                                              ; preds = %195, %103
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %3, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %3, align 4
  br label %99

200:                                              ; preds = %99
  %201 = load i32, i32* @qfalse, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %200, %193, %94, %85, %64, %56, %42, %27, %14
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
