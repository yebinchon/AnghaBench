; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-poll-oob.c_poll_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-poll-oob.c_poll_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_PRIORITIZED = common dso_local global i32 0, align 4
@client_fd = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@cli_pr_check = common dso_local global i32 0, align 4
@poll_req = common dso_local global i32* null, align 8
@UV_READABLE = common dso_local global i32 0, align 4
@UV_WRITABLE = common dso_local global i32 0, align 4
@cli_rd_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@server_fd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@srv_rd_check = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @poll_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_cb(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @uv_fileno(i32* %10, i32* %9)
  %12 = icmp eq i64 0, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 0, i32 5)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @UV_PRIORITIZED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i32, i32* @client_fd, align 4
  %24 = bitcast [5 x i8]* %7 to i8**
  %25 = load i32, i32* @MSG_OOB, align 4
  %26 = call i32 @recv(i32 %23, i8** %24, i32 5, i32 %25)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EINTR, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %22, label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %8, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EINVAL, align 8
  %42 = icmp ne i64 %40, %41
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ true, %36 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  store i32 1, i32* @cli_pr_check, align 4
  %47 = load i32*, i32** @poll_req, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i64 @uv_poll_stop(i32* %48)
  %50 = icmp eq i64 0, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load i32*, i32** @poll_req, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* @UV_READABLE, align 4
  %56 = load i32, i32* @UV_WRITABLE, align 4
  %57 = or i32 %55, %56
  %58 = call i64 @uv_poll_start(i32* %54, i32 %57, void (i32*, i32, i32)* @poll_cb)
  %59 = icmp eq i64 0, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  br label %62

62:                                               ; preds = %43, %3
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @UV_READABLE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %202

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @client_fd, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %159

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %83, %71
  %73 = load i32, i32* @client_fd, align 4
  %74 = bitcast [5 x i8]* %7 to i8**
  %75 = call i32 @recv(i32 %73, i8** %74, i32 5, i32 0)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @EINTR, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ false, %76 ], [ %82, %79 ]
  br i1 %84, label %72, label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %8, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* @errno, align 8
  %90 = load i64, i64* @EINVAL, align 8
  %91 = icmp ne i64 %89, %90
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi i1 [ true, %85 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @ASSERT(i32 %94)
  %96 = load i32, i32* @cli_rd_check, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %100 = load i32, i32* %8, align 4
  %101 = call i64 @strncmp(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @ASSERT(i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 5, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @ASSERT(i32 %107)
  store i32 2, i32* @cli_rd_check, align 4
  br label %109

109:                                              ; preds = %98, %92
  %110 = load i32, i32* @cli_rd_check, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %158

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 4
  %115 = zext i1 %114 to i32
  %116 = call i32 @ASSERT(i32 %115)
  %117 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %118 = load i32, i32* %8, align 4
  %119 = call i64 @strncmp(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = icmp eq i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @ASSERT(i32 %121)
  store i32 1, i32* @cli_rd_check, align 4
  br label %123

123:                                              ; preds = %152, %112
  br label %124

124:                                              ; preds = %135, %123
  %125 = load i32, i32* @server_fd, align 4
  %126 = bitcast [5 x i8]* %7 to i8**
  %127 = call i32 @recv(i32 %125, i8** %126, i32 5, i32 0)
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %8, align 4
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i64, i64* @errno, align 8
  %133 = load i64, i64* @EINTR, align 8
  %134 = icmp eq i64 %132, %133
  br label %135

135:                                              ; preds = %131, %128
  %136 = phi i1 [ false, %128 ], [ %134, %131 ]
  br i1 %136, label %124, label %137

137:                                              ; preds = %135
  %138 = load i32, i32* %8, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load i32, i32* %8, align 4
  %142 = icmp eq i32 %141, 5
  %143 = zext i1 %142 to i32
  %144 = call i32 @ASSERT(i32 %143)
  %145 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %146 = load i32, i32* %8, align 4
  %147 = call i64 @strncmp(i8* %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = icmp eq i64 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @ASSERT(i32 %149)
  store i32 2, i32* @cli_rd_check, align 4
  br label %151

151:                                              ; preds = %140, %137
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %8, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %123, label %155

155:                                              ; preds = %152
  %156 = call i32 (...) @got_eagain()
  %157 = call i32 @ASSERT(i32 %156)
  br label %158

158:                                              ; preds = %155, %109
  br label %159

159:                                              ; preds = %158, %67
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @server_fd, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %201

163:                                              ; preds = %159
  br label %164

164:                                              ; preds = %175, %163
  %165 = load i32, i32* @server_fd, align 4
  %166 = bitcast [5 x i8]* %7 to i8**
  %167 = call i32 @recv(i32 %165, i8** %166, i32 3, i32 0)
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %8, align 4
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i64, i64* @errno, align 8
  %173 = load i64, i64* @EINTR, align 8
  %174 = icmp eq i64 %172, %173
  br label %175

175:                                              ; preds = %171, %168
  %176 = phi i1 [ false, %168 ], [ %174, %171 ]
  br i1 %176, label %164, label %177

177:                                              ; preds = %175
  %178 = load i32, i32* %8, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = load i64, i64* @errno, align 8
  %182 = load i64, i64* @EINVAL, align 8
  %183 = icmp ne i64 %181, %182
  br label %184

184:                                              ; preds = %180, %177
  %185 = phi i1 [ true, %177 ], [ %183, %180 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @ASSERT(i32 %186)
  %188 = load i32, i32* %8, align 4
  %189 = icmp eq i32 3, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @ASSERT(i32 %190)
  %192 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %193 = load i32, i32* %8, align 4
  %194 = call i64 @strncmp(i8* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  %195 = icmp eq i64 %194, 0
  %196 = zext i1 %195 to i32
  %197 = call i32 @ASSERT(i32 %196)
  store i32 1, i32* @srv_rd_check, align 4
  %198 = load i32*, i32** @poll_req, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = call i64 @uv_poll_stop(i32* %199)
  br label %201

201:                                              ; preds = %184, %159
  br label %202

202:                                              ; preds = %201, %62
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* @UV_WRITABLE, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %225

207:                                              ; preds = %202
  br label %208

208:                                              ; preds = %218, %207
  %209 = load i32, i32* @client_fd, align 4
  %210 = call i32 @send(i32 %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3, i32 0)
  store i32 %210, i32* %8, align 4
  br label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %8, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i64, i64* @errno, align 8
  %216 = load i64, i64* @EINTR, align 8
  %217 = icmp eq i64 %215, %216
  br label %218

218:                                              ; preds = %214, %211
  %219 = phi i1 [ false, %211 ], [ %217, %214 ]
  br i1 %219, label %208, label %220

220:                                              ; preds = %218
  %221 = load i32, i32* %8, align 4
  %222 = icmp eq i32 3, %221
  %223 = zext i1 %222 to i32
  %224 = call i32 @ASSERT(i32 %223)
  br label %225

225:                                              ; preds = %220, %202
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_fileno(i32*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @recv(i32, i8**, i32, i32) #1

declare dso_local i64 @uv_poll_stop(i32*) #1

declare dso_local i64 @uv_poll_start(i32*, i32, void (i32*, i32, i32)*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @got_eagain(...) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
