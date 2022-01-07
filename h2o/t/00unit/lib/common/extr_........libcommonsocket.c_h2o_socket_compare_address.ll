; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocket.c_h2o_socket_compare_address.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocket.c_h2o_socket_compare_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_un = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AF_UNIX = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"unknown sa_family\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_socket_compare_address(%struct.sockaddr* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_un*, align 8
  %9 = alloca %struct.sockaddr_un*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca %struct.sockaddr_in6*, align 8
  %15 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %16

16:                                               ; preds = %3
  %17 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %29 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 -1, i32 1
  store i32 %33, i32* %4, align 4
  br label %229

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_UNIX, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %43 = bitcast %struct.sockaddr* %42 to i8*
  %44 = bitcast i8* %43 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %44, %struct.sockaddr_un** %8, align 8
  %45 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %46 = bitcast %struct.sockaddr* %45 to i8*
  %47 = bitcast i8* %46 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %47, %struct.sockaddr_un** %9, align 8
  %48 = load %struct.sockaddr_un*, %struct.sockaddr_un** %8, align 8
  %49 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %52 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strcmp(i32 %50, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %229

59:                                               ; preds = %41
  br label %228

60:                                               ; preds = %35
  %61 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %62 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AF_INET, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %129

66:                                               ; preds = %60
  %67 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %68 = bitcast %struct.sockaddr* %67 to i8*
  %69 = bitcast i8* %68 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %69, %struct.sockaddr_in** %11, align 8
  %70 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %71 = bitcast %struct.sockaddr* %70 to i8*
  %72 = bitcast i8* %71 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %72, %struct.sockaddr_in** %12, align 8
  br label %73

73:                                               ; preds = %66
  %74 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %75 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ntohl(i32 %77)
  %79 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ntohl(i32 %82)
  %84 = icmp ne i64 %78, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %73
  %86 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %87 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @ntohl(i32 %89)
  %91 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @ntohl(i32 %94)
  %96 = icmp slt i64 %90, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 -1, i32 1
  store i32 %98, i32* %4, align 4
  br label %229

99:                                               ; preds = %73
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %106 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @ntohs(i32 %107)
  %109 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %110 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @ntohs(i32 %111)
  %113 = icmp ne i64 %108, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %104
  %115 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %116 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @ntohs(i32 %117)
  %119 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %120 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @ntohs(i32 %121)
  %123 = icmp slt i64 %118, %122
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 -1, i32 1
  store i32 %125, i32* %4, align 4
  br label %229

126:                                              ; preds = %104
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127, %100
  br label %227

129:                                              ; preds = %60
  %130 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %131 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @AF_INET6, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %224

135:                                              ; preds = %129
  %136 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %137 = bitcast %struct.sockaddr* %136 to i8*
  %138 = bitcast i8* %137 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %138, %struct.sockaddr_in6** %13, align 8
  %139 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %140 = bitcast %struct.sockaddr* %139 to i8*
  %141 = bitcast i8* %140 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %141, %struct.sockaddr_in6** %14, align 8
  %142 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %143 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %147 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @memcmp(i32 %145, i32 %149, i32 4)
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %135
  %154 = load i32, i32* %15, align 4
  store i32 %154, i32* %4, align 4
  br label %229

155:                                              ; preds = %135
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %183

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %158
  %160 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %161 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @ntohs(i32 %162)
  %164 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %165 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @ntohs(i32 %166)
  %168 = icmp ne i64 %163, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %159
  %170 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %171 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @ntohs(i32 %172)
  %174 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %175 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @ntohs(i32 %176)
  %178 = icmp slt i64 %173, %177
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 -1, i32 1
  store i32 %180, i32* %4, align 4
  br label %229

181:                                              ; preds = %159
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182, %155
  br label %184

184:                                              ; preds = %183
  %185 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %186 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %189 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %187, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %184
  %193 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %194 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %197 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp slt i64 %195, %198
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 -1, i32 1
  store i32 %201, i32* %4, align 4
  br label %229

202:                                              ; preds = %184
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  %205 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %206 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %209 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %207, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %204
  %213 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %214 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %217 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp slt i64 %215, %218
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 -1, i32 1
  store i32 %221, i32* %4, align 4
  br label %229

222:                                              ; preds = %204
  br label %223

223:                                              ; preds = %222
  br label %226

224:                                              ; preds = %129
  %225 = call i32 @assert(i32 0)
  br label %226

226:                                              ; preds = %224, %223
  br label %227

227:                                              ; preds = %226, %128
  br label %228

228:                                              ; preds = %227, %59
  store i32 0, i32* %4, align 4
  br label %229

229:                                              ; preds = %228, %212, %192, %169, %153, %114, %85, %57, %24
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
