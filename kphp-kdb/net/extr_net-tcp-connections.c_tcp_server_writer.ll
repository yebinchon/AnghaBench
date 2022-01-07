; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-connections.c_tcp_server_writer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-connections.c_tcp_server_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }
%struct.connection = type { i64, i32, i32, i32, %struct.TYPE_2__*, i64, %struct.raw_message, %struct.raw_message }
%struct.TYPE_2__ = type { i64 (%struct.connection*)*, {}* }
%struct.raw_message = type { i32 }

@conn_connecting = common dso_local global i64 0, align 8
@C_WANTWR = common dso_local global i32 0, align 4
@C_NOWR = common dso_local global i32 0, align 4
@tcp_server_writer.iov = internal global [64 x %struct.iovec] zeroinitializer, align 16
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"send/writev() to %d: %d written out of %d in %d chunks\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"send()\00", align 1
@C_WANTRD = common dso_local global i32 0, align 4
@conn_write_close = common dso_local global i64 0, align 8
@C_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_server_writer(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.raw_message*, align 8
  %8 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.connection*, %struct.connection** %2, align 8
  %10 = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @conn_connecting, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.connection*, %struct.connection** %2, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.connection*, %struct.connection** %2, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64 (%struct.connection*)*, i64 (%struct.connection*)** %24, align 8
  %26 = load %struct.connection*, %struct.connection** %2, align 8
  %27 = call i64 %25(%struct.connection* %26)
  %28 = icmp sge i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  br label %31

31:                                               ; preds = %20, %1
  %32 = load %struct.connection*, %struct.connection** %2, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.connection*, %struct.connection** %2, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 7
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.connection*, %struct.connection** %2, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 6
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi %struct.raw_message* [ %38, %36 ], [ %41, %39 ]
  store %struct.raw_message* %43, %struct.raw_message** %7, align 8
  br label %44

44:                                               ; preds = %195, %42
  %45 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %46 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.connection*, %struct.connection** %2, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %47, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %134, %44
  %54 = load %struct.connection*, %struct.connection** %2, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @C_WANTWR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %135

60:                                               ; preds = %53
  %61 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %62 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @C_WANTWR, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.connection*, %struct.connection** %2, align 8
  %70 = getelementptr inbounds %struct.connection, %struct.connection* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %135

73:                                               ; preds = %60
  %74 = load %struct.connection*, %struct.connection** %2, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @C_NOWR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %135

81:                                               ; preds = %73
  store i32 -1, i32* %8, align 4
  %82 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %83 = call i32 @tcp_prepare_iovec(%struct.iovec* getelementptr inbounds ([64 x %struct.iovec], [64 x %struct.iovec]* @tcp_server_writer.iov, i64 0, i64 0), i32* %8, i32 64, %struct.raw_message* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %4, align 4
  %88 = icmp sgt i32 %87, 0
  br label %89

89:                                               ; preds = %86, %81
  %90 = phi i1 [ false, %81 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.connection*, %struct.connection** %2, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @writev(i32 %95, %struct.iovec* getelementptr inbounds ([64 x %struct.iovec], [64 x %struct.iovec]* @tcp_server_writer.iov, i64 0, i64 0), i32 %96)
  store i32 %97, i32* %3, align 4
  %98 = load i64, i64* @verbosity, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %89
  %101 = load i32, i32* @stderr, align 4
  %102 = load %struct.connection*, %struct.connection** %2, align 8
  %103 = getelementptr inbounds %struct.connection, %struct.connection* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %100
  br label %114

114:                                              ; preds = %113, %89
  %115 = load i32, i32* %3, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @rwm_fetch_data(%struct.raw_message* %118, i32 0, i32 %119)
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %117, %114
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i32, i32* @C_NOWR, align 4
  %130 = load %struct.connection*, %struct.connection** %2, align 8
  %131 = getelementptr inbounds %struct.connection, %struct.connection* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %124
  br label %53

135:                                              ; preds = %80, %66, %53
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %194

138:                                              ; preds = %135
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %193

141:                                              ; preds = %138
  %142 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %143 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.connection*, %struct.connection** %2, align 8
  %146 = getelementptr inbounds %struct.connection, %struct.connection* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %193

149:                                              ; preds = %141
  %150 = load %struct.connection*, %struct.connection** %2, align 8
  %151 = getelementptr inbounds %struct.connection, %struct.connection* %150, i32 0, i32 4
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = bitcast {}** %153 to i32 (%struct.connection*)**
  %155 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %154, align 8
  %156 = icmp ne i32 (%struct.connection*)* %155, null
  br i1 %156, label %157, label %193

157:                                              ; preds = %149
  %158 = load %struct.connection*, %struct.connection** %2, align 8
  %159 = getelementptr inbounds %struct.connection, %struct.connection* %158, i32 0, i32 4
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = bitcast {}** %161 to i32 (%struct.connection*)**
  %163 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %162, align 8
  %164 = load %struct.connection*, %struct.connection** %2, align 8
  %165 = call i32 %163(%struct.connection* %164)
  store i32 0, i32* %5, align 4
  %166 = load %struct.connection*, %struct.connection** %2, align 8
  %167 = getelementptr inbounds %struct.connection, %struct.connection* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %157
  %171 = load %struct.connection*, %struct.connection** %2, align 8
  %172 = getelementptr inbounds %struct.connection, %struct.connection* %171, i32 0, i32 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i64 (%struct.connection*)*, i64 (%struct.connection*)** %174, align 8
  %176 = load %struct.connection*, %struct.connection** %2, align 8
  %177 = call i64 %175(%struct.connection* %176)
  %178 = icmp sge i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  br label %181

181:                                              ; preds = %170, %157
  %182 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %183 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load i32, i32* @C_WANTWR, align 4
  %188 = load %struct.connection*, %struct.connection** %2, align 8
  %189 = getelementptr inbounds %struct.connection, %struct.connection* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %186, %181
  br label %193

193:                                              ; preds = %192, %149, %141, %138
  br label %194

194:                                              ; preds = %193, %135
  br label %195

195:                                              ; preds = %194
  %196 = load %struct.connection*, %struct.connection** %2, align 8
  %197 = getelementptr inbounds %struct.connection, %struct.connection* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @C_WANTWR, align 4
  %200 = load i32, i32* @C_NOWR, align 4
  %201 = or i32 %199, %200
  %202 = and i32 %198, %201
  %203 = load i32, i32* @C_WANTWR, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %44, label %205

205:                                              ; preds = %195
  %206 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %207 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %205
  %211 = load i32, i32* @C_WANTRD, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.connection*, %struct.connection** %2, align 8
  %214 = getelementptr inbounds %struct.connection, %struct.connection* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %237

217:                                              ; preds = %205
  %218 = load %struct.connection*, %struct.connection** %2, align 8
  %219 = getelementptr inbounds %struct.connection, %struct.connection* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @conn_write_close, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %217
  %224 = load %struct.connection*, %struct.connection** %2, align 8
  %225 = getelementptr inbounds %struct.connection, %struct.connection* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @C_FAILED, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %223
  %231 = load i32, i32* @C_WANTRD, align 4
  %232 = load %struct.connection*, %struct.connection** %2, align 8
  %233 = getelementptr inbounds %struct.connection, %struct.connection* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 8
  br label %236

236:                                              ; preds = %230, %223, %217
  br label %237

237:                                              ; preds = %236, %210
  %238 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %239 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  ret i32 %240
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tcp_prepare_iovec(%struct.iovec*, i32*, i32, %struct.raw_message*) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rwm_fetch_data(%struct.raw_message*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
