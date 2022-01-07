; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_client_reader.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_client_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"in client_reader(%d)\0A\00", align 1
@C_NORD = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"recv() from %d: %d read out of %d at %p\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"recv()\00", align 1
@C_WANTRD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"client socket #%d: command line longer than 1024 bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client_reader(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @verbosity, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = load %struct.connection*, %struct.connection** %3, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = call i32 @get_client_gather(%struct.connection* %24)
  %26 = load %struct.connection*, %struct.connection** %3, align 8
  %27 = call i32 @client_read_special(%struct.connection* %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.connection*, %struct.connection** %3, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 3
  %31 = call i8* @get_write_ptr(i32* %30, i32 512)
  store i8* %31, i8** %6, align 8
  %32 = load %struct.connection*, %struct.connection** %3, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 3
  %34 = call i32 @get_write_space(i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %28
  %38 = load %struct.connection*, %struct.connection** %3, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 3
  %40 = call i32 @free_all_buffers(i32* %39)
  %41 = load %struct.connection*, %struct.connection** %3, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 1
  store i32 8, i32* %42, align 4
  %43 = load %struct.connection*, %struct.connection** %3, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 3
  %45 = call i8* @get_write_ptr(i32* %44, i32 512)
  store i8* %45, i8** %6, align 8
  %46 = load %struct.connection*, %struct.connection** %3, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 3
  %48 = call i32 @get_write_space(i32* %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %37, %28
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 0
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.connection*, %struct.connection** %3, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @C_NORD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %94, label %65

65:                                               ; preds = %55
  %66 = load %struct.connection*, %struct.connection** %3, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @MSG_DONTWAIT, align 4
  %72 = call i32 @recv(i32 %68, i8* %69, i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @verbosity, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %65
  %76 = load i32, i32* @stderr, align 4
  %77 = load %struct.connection*, %struct.connection** %3, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i8* %82)
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %75
  %87 = load i64, i64* @errno, align 8
  %88 = load i64, i64* @EAGAIN, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %86, %75
  br label %93

93:                                               ; preds = %92, %65
  br label %95

94:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %93
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i32, i32* @C_NORD, align 4
  %101 = load %struct.connection*, %struct.connection** %3, align 8
  %102 = getelementptr inbounds %struct.connection, %struct.connection* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %95
  %106 = load i32, i32* %7, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.connection*, %struct.connection** %3, align 8
  %110 = getelementptr inbounds %struct.connection, %struct.connection* %109, i32 0, i32 3
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @advance_write_ptr(i32* %110, i32 %111)
  br label %125

113:                                              ; preds = %105
  %114 = load %struct.connection*, %struct.connection** %3, align 8
  %115 = getelementptr inbounds %struct.connection, %struct.connection* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, i32* @C_WANTRD, align 4
  %120 = load %struct.connection*, %struct.connection** %3, align 8
  %121 = getelementptr inbounds %struct.connection, %struct.connection* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  store i32 2, i32* %2, align 4
  br label %259

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %108
  %126 = load %struct.connection*, %struct.connection** %3, align 8
  %127 = getelementptr inbounds %struct.connection, %struct.connection* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.connection*, %struct.connection** %3, align 8
  %132 = call i32 @get_client_gather(%struct.connection* %131)
  %133 = load %struct.connection*, %struct.connection** %3, align 8
  %134 = call i32 @client_read_special(%struct.connection* %133)
  store i32 0, i32* %2, align 4
  br label %259

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %253, %135
  %137 = load %struct.connection*, %struct.connection** %3, align 8
  %138 = getelementptr inbounds %struct.connection, %struct.connection* %137, i32 0, i32 3
  %139 = call i8* @get_read_ptr(i32* %138)
  store i8* %139, i8** %4, align 8
  store i8* %139, i8** %5, align 8
  %140 = load %struct.connection*, %struct.connection** %3, align 8
  %141 = getelementptr inbounds %struct.connection, %struct.connection* %140, i32 0, i32 3
  %142 = call i32 @get_ready_bytes(i32* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %259

146:                                              ; preds = %136
  %147 = load i8*, i8** %4, align 8
  %148 = load i32, i32* %8, align 4
  %149 = icmp sgt i32 %148, 1024
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %153

151:                                              ; preds = %146
  %152 = load i32, i32* %8, align 4
  br label %153

153:                                              ; preds = %151, %150
  %154 = phi i32 [ 1024, %150 ], [ %152, %151 ]
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %147, i64 %155
  store i8* %156, i8** %6, align 8
  br label %157

157:                                              ; preds = %168, %153
  %158 = load i8*, i8** %5, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = icmp ult i8* %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i8*, i8** %5, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 10
  br label %166

166:                                              ; preds = %161, %157
  %167 = phi i1 [ false, %157 ], [ %165, %161 ]
  br i1 %167, label %168, label %171

168:                                              ; preds = %166
  %169 = load i8*, i8** %5, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %5, align 8
  br label %157

171:                                              ; preds = %166
  %172 = load i8*, i8** %5, align 8
  %173 = load i8*, i8** %6, align 8
  %174 = icmp uge i8* %172, %173
  br i1 %174, label %175, label %210

175:                                              ; preds = %171
  %176 = load i8*, i8** %6, align 8
  %177 = load i8*, i8** %4, align 8
  %178 = ptrtoint i8* %176 to i64
  %179 = ptrtoint i8* %177 to i64
  %180 = sub i64 %178, %179
  %181 = icmp sge i64 %180, 1024
  br i1 %181, label %182, label %201

182:                                              ; preds = %175
  %183 = load i32, i32* @verbosity, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i32, i32* @stderr, align 4
  %187 = load %struct.connection*, %struct.connection** %3, align 8
  %188 = getelementptr inbounds %struct.connection, %struct.connection* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %186, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %185, %182
  %192 = load %struct.connection*, %struct.connection** %3, align 8
  %193 = getelementptr inbounds %struct.connection, %struct.connection* %192, i32 0, i32 3
  %194 = load i8*, i8** %6, align 8
  %195 = load i8*, i8** %4, align 8
  %196 = ptrtoint i8* %194 to i64
  %197 = ptrtoint i8* %195 to i64
  %198 = sub i64 %196, %197
  %199 = trunc i64 %198 to i32
  %200 = call i32 @advance_read_ptr(i32* %193, i32 %199)
  store i32 -1, i32* %2, align 4
  br label %259

201:                                              ; preds = %175
  %202 = load %struct.connection*, %struct.connection** %3, align 8
  %203 = getelementptr inbounds %struct.connection, %struct.connection* %202, i32 0, i32 3
  %204 = call i32 @force_ready_bytes(i32* %203, i32 1024)
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp sle i32 %205, %206
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 -1, i32 0
  store i32 %209, i32* %2, align 4
  br label %259

210:                                              ; preds = %171
  %211 = load i8*, i8** %5, align 8
  store i8* %211, i8** %6, align 8
  %212 = load i8*, i8** %6, align 8
  %213 = load i8*, i8** %4, align 8
  %214 = ptrtoint i8* %212 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  %217 = add nsw i64 %216, 1
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %8, align 4
  %219 = load i8*, i8** %6, align 8
  store i8 0, i8* %219, align 1
  %220 = load i8*, i8** %6, align 8
  %221 = load i8*, i8** %4, align 8
  %222 = icmp ugt i8* %220, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %210
  %224 = load i8*, i8** %6, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 -1
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 13
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load i8*, i8** %6, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 -1
  store i8* %231, i8** %6, align 8
  store i8 0, i8* %231, align 1
  br label %232

232:                                              ; preds = %229, %223, %210
  %233 = load %struct.connection*, %struct.connection** %3, align 8
  %234 = load i8*, i8** %4, align 8
  %235 = load i8*, i8** %6, align 8
  %236 = load i8*, i8** %4, align 8
  %237 = ptrtoint i8* %235 to i64
  %238 = ptrtoint i8* %236 to i64
  %239 = sub i64 %237, %238
  %240 = trunc i64 %239 to i32
  %241 = call i32 @client_execute(%struct.connection* %233, i8* %234, i32 %240)
  store i32 %241, i32* %7, align 4
  %242 = load %struct.connection*, %struct.connection** %3, align 8
  %243 = getelementptr inbounds %struct.connection, %struct.connection* %242, i32 0, i32 3
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @advance_read_ptr(i32* %243, i32 %244)
  %246 = load i32, i32* %7, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %232
  store i32 -1, i32* %2, align 4
  br label %259

249:                                              ; preds = %232
  %250 = load %struct.connection*, %struct.connection** %3, align 8
  %251 = getelementptr inbounds %struct.connection, %struct.connection* %250, i32 0, i32 3
  %252 = call i32 @free_unused_buffers(i32* %251)
  br label %253

253:                                              ; preds = %249
  %254 = load i32, i32* %7, align 4
  %255 = icmp ne i32 %254, 0
  %256 = xor i1 %255, true
  br i1 %256, label %136, label %257

257:                                              ; preds = %253
  %258 = load i32, i32* %7, align 4
  store i32 %258, i32* %2, align 4
  br label %259

259:                                              ; preds = %257, %248, %201, %191, %145, %130, %118
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @get_client_gather(%struct.connection*) #1

declare dso_local i32 @client_read_special(%struct.connection*) #1

declare dso_local i8* @get_write_ptr(i32*, i32) #1

declare dso_local i32 @get_write_space(i32*) #1

declare dso_local i32 @free_all_buffers(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @advance_write_ptr(i32*, i32) #1

declare dso_local i8* @get_read_ptr(i32*) #1

declare dso_local i32 @get_ready_bytes(i32*) #1

declare dso_local i32 @advance_read_ptr(i32*, i32) #1

declare dso_local i32 @force_ready_bytes(i32*, i32) #1

declare dso_local i32 @client_execute(%struct.connection*, i8*, i32) #1

declare dso_local i32 @free_unused_buffers(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
