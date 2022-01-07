; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_tinysrp.c_tsrp_server_authenticate.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_tinysrp.c_tsrp_server_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }
%struct.t_server = type { i8, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.t_num = type { i8, i8* }

@MAXUSERLEN = common dso_local global i32 0, align 4
@MAXPARAMLEN = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@RESPONSE_LEN = common dso_local global i32 0, align 4
@SESSION_KEY_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsrp_server_authenticate(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.t_server*, align 8
  %14 = alloca %struct.t_num, align 8
  %15 = alloca %struct.t_num*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %17 = load i32, i32* @MAXUSERLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @MAXPARAMLEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %25 = load i32, i32* @MAXPARAMLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @recv(i32 %28, i8* %24, i32 1, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

33:                                               ; preds = %2
  %34 = getelementptr inbounds i8, i8* %24, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = zext i8 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @MSG_WAITALL, align 4
  %40 = call i32 @recv(i32 %37, i8* %20, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %20, i64 %46
  store i8 0, i8* %47, align 1
  %48 = call %struct.t_server* @t_serveropen(i8* %20)
  store %struct.t_server* %48, %struct.t_server** %13, align 8
  %49 = load %struct.t_server*, %struct.t_server** %13, align 8
  %50 = icmp eq %struct.t_server* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

52:                                               ; preds = %44
  %53 = load %struct.t_server*, %struct.t_server** %13, align 8
  %54 = getelementptr inbounds %struct.t_server, %struct.t_server* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 8
  %56 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %55, i8* %56, align 16
  %57 = load %struct.t_server*, %struct.t_server** %13, align 8
  %58 = getelementptr inbounds %struct.t_server, %struct.t_server* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %62, i8* %63, align 1
  %64 = getelementptr inbounds i8, i8* %24, i64 2
  %65 = load %struct.t_server*, %struct.t_server** %13, align 8
  %66 = getelementptr inbounds %struct.t_server, %struct.t_server* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @memcpy(i8* %64, i8* %68, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 2
  %74 = call i64 @send(i32 %71, i8* %24, i32 %73, i32 0)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

77:                                               ; preds = %52
  %78 = load %struct.t_server*, %struct.t_server** %13, align 8
  %79 = call %struct.t_num* @t_servergenexp(%struct.t_server* %78)
  store %struct.t_num* %79, %struct.t_num** %15, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @recv(i32 %80, i8* %24, i32 1, i32 0)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

85:                                               ; preds = %77
  %86 = getelementptr inbounds i8, i8* %24, i64 0
  %87 = load i8, i8* %86, align 16
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %88, 1
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds %struct.t_num, %struct.t_num* %14, i32 0, i32 0
  store i8 %90, i8* %91, align 8
  %92 = getelementptr inbounds %struct.t_num, %struct.t_num* %14, i32 0, i32 1
  store i8* %27, i8** %92, align 8
  %93 = load i32, i32* %4, align 4
  %94 = getelementptr inbounds %struct.t_num, %struct.t_num* %14, i32 0, i32 0
  %95 = load i8, i8* %94, align 8
  %96 = zext i8 %95 to i32
  %97 = load i32, i32* @MSG_WAITALL, align 4
  %98 = call i32 @recv(i32 %93, i8* %27, i32 %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %85
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

102:                                              ; preds = %85
  %103 = load %struct.t_num*, %struct.t_num** %15, align 8
  %104 = getelementptr inbounds %struct.t_num, %struct.t_num* %103, i32 0, i32 0
  %105 = load i8, i8* %104, align 8
  %106 = zext i8 %105 to i32
  %107 = sub nsw i32 %106, 1
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %108, i8* %109, align 16
  %110 = getelementptr inbounds i8, i8* %24, i64 1
  %111 = load %struct.t_num*, %struct.t_num** %15, align 8
  %112 = getelementptr inbounds %struct.t_num, %struct.t_num* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.t_num*, %struct.t_num** %15, align 8
  %115 = getelementptr inbounds %struct.t_num, %struct.t_num* %114, i32 0, i32 0
  %116 = load i8, i8* %115, align 8
  %117 = zext i8 %116 to i32
  %118 = call i32 @memcpy(i8* %110, i8* %113, i32 %117)
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.t_num*, %struct.t_num** %15, align 8
  %121 = getelementptr inbounds %struct.t_num, %struct.t_num* %120, i32 0, i32 0
  %122 = load i8, i8* %121, align 8
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 %123, 1
  %125 = call i64 @send(i32 %119, i8* %24, i32 %124, i32 0)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

128:                                              ; preds = %102
  %129 = load %struct.t_server*, %struct.t_server** %13, align 8
  %130 = call i8* @t_servergetkey(%struct.t_server* %129, %struct.t_num* %14)
  store i8* %130, i8** %10, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

134:                                              ; preds = %128
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @RESPONSE_LEN, align 4
  %137 = load i32, i32* @MSG_WAITALL, align 4
  %138 = call i32 @recv(i32 %135, i8* %24, i32 %136, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp sle i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

142:                                              ; preds = %134
  %143 = load %struct.t_server*, %struct.t_server** %13, align 8
  %144 = call i64 @t_serververify(%struct.t_server* %143, i8* %24)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

147:                                              ; preds = %142
  %148 = load i32, i32* %4, align 4
  %149 = load %struct.t_server*, %struct.t_server** %13, align 8
  %150 = call i8* @t_serverresponse(%struct.t_server* %149)
  %151 = load i32, i32* @RESPONSE_LEN, align 4
  %152 = call i64 @send(i32 %148, i8* %150, i32 %151, i32 0)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

155:                                              ; preds = %147
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %157 = icmp ne %struct.TYPE_5__* %156, null
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strlen(i8* %20)
  %163 = add nsw i32 %162, 1
  %164 = call i32 @memcpy(i8* %161, i8* %20, i32 %163)
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = load i32, i32* @SESSION_KEY_LEN, align 4
  %170 = call i32 @memcpy(i8* %167, i8* %168, i32 %169)
  br label %171

171:                                              ; preds = %158, %155
  %172 = load %struct.t_server*, %struct.t_server** %13, align 8
  %173 = call i32 @t_serverclose(%struct.t_server* %172)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

174:                                              ; preds = %171, %154, %146, %141, %133, %127, %101, %84, %76, %51, %43, %32
  %175 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #2

declare dso_local %struct.t_server* @t_serveropen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @send(i32, i8*, i32, i32) #2

declare dso_local %struct.t_num* @t_servergenexp(%struct.t_server*) #2

declare dso_local i8* @t_servergetkey(%struct.t_server*, %struct.t_num*) #2

declare dso_local i64 @t_serververify(%struct.t_server*, i8*) #2

declare dso_local i8* @t_serverresponse(%struct.t_server*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @t_serverclose(%struct.t_server*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
