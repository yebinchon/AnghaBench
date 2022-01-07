; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_dns-server.c_process_req.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_dns-server.c_process_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i8*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32, i32 }

@DNSREC_LEN = common dso_local global i32 0, align 4
@WRITE_BUF_LEN = common dso_local global i32 0, align 4
@after_write = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"uv_write failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_10__*)* @process_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_req(i32* %0, i8* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %8, align 8
  %19 = load i32, i32* @DNSREC_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* @DNSREC_LEN, align 4
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %24 = call i64 @malloc(i32 24)
  %25 = inttoptr i64 %24 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %7, align 8
  %26 = load i32, i32* @WRITE_BUF_LEN, align 4
  %27 = call i64 @malloc(i32 %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %3
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %44, i64 %49
  store i8* %50, i8** %14, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  store i32 1, i32* %16, align 4
  br label %61

55:                                               ; preds = %3
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %55, %40
  %62 = load i8*, i8** %14, align 8
  store i8* %62, i8** %15, align 8
  br label %63

63:                                               ; preds = %154, %61
  %64 = load i8*, i8** %14, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %155

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %138, %66
  %68 = load i32, i32* %13, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %139

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %118

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i32, i32* @DNSREC_LEN, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %22, i64 %81
  %83 = load i8*, i8** %14, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @memcpy(i8* %82, i8* %83, i32 %84)
  %86 = load i32, i32* @DNSREC_LEN, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %11, align 4
  br label %139

89:                                               ; preds = %73
  %90 = load i32, i32* @DNSREC_LEN, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %22, i64 %93
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @memcpy(i8* %94, i8* %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = load i8*, i8** %14, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %14, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %13, align 4
  store i32 0, i32* %11, align 4
  %105 = getelementptr inbounds i8, i8* %22, i64 0
  %106 = load i8, i8* %105, align 16
  %107 = sext i8 %106 to i32
  %108 = mul i32 %107, 256
  %109 = getelementptr inbounds i8, i8* %22, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = add i32 %108, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* @DNSREC_LEN, align 4
  %114 = sub nsw i32 %113, 2
  %115 = load i32, i32* %12, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %89
  br label %118

118:                                              ; preds = %117, %70
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = call i32 @addrsp(%struct.TYPE_9__* %123, i8* %22)
  %125 = load i32, i32* %12, align 4
  %126 = load i8*, i8** %14, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %14, align 8
  %129 = load i8*, i8** %14, align 8
  store i8* %129, i8** %15, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %133 = load i32, i32* @DNSREC_LEN, align 4
  store i32 %133, i32* %11, align 4
  br label %138

134:                                              ; preds = %118
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %12, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %12, align 4
  br label %139

138:                                              ; preds = %122
  br label %67

139:                                              ; preds = %134, %77, %67
  %140 = load i32, i32* %16, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** %14, align 8
  %151 = load i8*, i8** %5, align 8
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %154

153:                                              ; preds = %139
  store i8* null, i8** %14, align 8
  br label %154

154:                                              ; preds = %153, %142
  br label %63

155:                                              ; preds = %63
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %155
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i32*, i32** %4, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* @after_write, align 4
  %168 = call i64 @uv_write(i32* %163, i32* %164, %struct.TYPE_12__* %166, i32 1, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = call i32 @FATAL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %161
  br label %173

173:                                              ; preds = %172, %155
  %174 = load i32, i32* %13, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %206

176:                                              ; preds = %173
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  store i8* %179, i8** %182, align 8
  %183 = load i8*, i8** %15, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = ptrtoint i8* %183 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = trunc i64 %189 to i32
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  store i32 %190, i32* %193, align 8
  %194 = load i8*, i8** %5, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = sub i64 0, %199
  %201 = getelementptr i8, i8* %194, i64 %200
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  store i32 %202, i32* %205, align 4
  br label %220

206:                                              ; preds = %173
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  store i8* null, i8** %209, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  store i32 0, i32* %212, align 8
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  store i32 0, i32* %215, align 4
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @free(i8* %218)
  br label %220

220:                                              ; preds = %206, %176
  %221 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %221)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @addrsp(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @uv_write(i32*, i32*, %struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @FATAL(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
