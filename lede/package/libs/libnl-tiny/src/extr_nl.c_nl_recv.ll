; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_recv.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32, i32 }
%struct.sockaddr_nl = type { i32 }
%struct.ucred = type { i32 }
%struct.iovec = type { i32, i8* }
%struct.msghdr = type { i8*, i32, i32, i8*, i32, i32, %struct.iovec* }
%struct.cmsghdr = type { i64, i64 }

@nl_recv.page_size = internal global i32 0, align 4
@NL_MSG_PEEK = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@NL_SOCK_PASSCRED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"recvmsg() returned EINTR, retrying\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"recvmsg() returned EAGAIN, aborting\0A\00", align 1
@MSG_TRUNC = common dso_local global i32 0, align 4
@MSG_CTRUNC = common dso_local global i32 0, align 4
@NLE_NOADDR = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i64 0, align 8
@SCM_CREDENTIALS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_recv(%struct.nl_sock* %0, %struct.sockaddr_nl* %1, i8** %2, %struct.ucred** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nl_sock*, align 8
  %7 = alloca %struct.sockaddr_nl*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.ucred**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iovec, align 8
  %13 = alloca %struct.msghdr, align 8
  %14 = alloca %struct.cmsghdr*, align 8
  store %struct.nl_sock* %0, %struct.nl_sock** %6, align 8
  store %struct.sockaddr_nl* %1, %struct.sockaddr_nl** %7, align 8
  store i8** %2, i8*** %8, align 8
  store %struct.ucred** %3, %struct.ucred*** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  %16 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %7, align 8
  %17 = bitcast %struct.sockaddr_nl* %16 to i8*
  store i8* %17, i8** %15, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 1
  store i32 4, i32* %18, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 2
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3
  store i8* null, i8** %20, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 4
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 5
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 6
  store %struct.iovec* %12, %struct.iovec** %23, align 8
  %24 = load %struct.nl_sock*, %struct.nl_sock** %6, align 8
  %25 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NL_MSG_PEEK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32, i32* @MSG_PEEK, align 4
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %30, %4
  %35 = load i32, i32* @nl_recv.page_size, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call i32 (...) @getpagesize()
  %39 = mul nsw i32 %38, 4
  store i32 %39, i32* @nl_recv.page_size, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @nl_recv.page_size, align 4
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @malloc(i32 %44)
  %46 = load i8**, i8*** %8, align 8
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.nl_sock*, %struct.nl_sock** %6, align 8
  %49 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NL_SOCK_PASSCRED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = call i32 @CMSG_SPACE(i32 4)
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @calloc(i32 1, i32 %58)
  %60 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %54, %40
  br label %62

62:                                               ; preds = %138, %125, %108, %78, %61
  %63 = load %struct.nl_sock*, %struct.nl_sock** %6, align 8
  %64 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @recvmsg(i32 %65, %struct.msghdr* %13, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %190

71:                                               ; preds = %62
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @EINTR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 @NL_DBG(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %62

80:                                               ; preds = %74
  %81 = load i64, i64* @errno, align 8
  %82 = load i64, i64* @EAGAIN, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @NL_DBG(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %190

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i8**, i8*** %8, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i64, i64* @errno, align 8
  %94 = call i32 @nl_syserr2nlerr(i64 %93)
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %197

96:                                               ; preds = %71
  br label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MSG_TRUNC, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %102, %97
  %109 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %110, 2
  store i32 %111, i32* %109, align 8
  %112 = load i8**, i8*** %8, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @realloc(i8* %113, i32 %115)
  %117 = load i8**, i8*** %8, align 8
  store i8* %116, i8** %117, align 8
  %118 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  br label %62

119:                                              ; preds = %102
  %120 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MSG_CTRUNC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %127, 2
  store i32 %128, i32* %126, align 8
  %129 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @realloc(i8* %130, i32 %132)
  %134 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3
  store i8* %133, i8** %134, align 8
  br label %62

135:                                              ; preds = %119
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 0, i32* %11, align 4
  br label %62

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = icmp ne i64 %144, 4
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i8**, i8*** %8, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @free(i8* %151)
  %153 = load i32, i32* @NLE_NOADDR, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %5, align 4
  br label %197

155:                                              ; preds = %141
  %156 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %13)
  store %struct.cmsghdr* %156, %struct.cmsghdr** %14, align 8
  br label %157

157:                                              ; preds = %182, %155
  %158 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %159 = icmp ne %struct.cmsghdr* %158, null
  br i1 %159, label %160, label %185

160:                                              ; preds = %157
  %161 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %162 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SOL_SOCKET, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %160
  %167 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %168 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SCM_CREDENTIALS, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = call i8* @calloc(i32 1, i32 4)
  %174 = bitcast i8* %173 to %struct.ucred*
  %175 = load %struct.ucred**, %struct.ucred*** %9, align 8
  store %struct.ucred* %174, %struct.ucred** %175, align 8
  %176 = load %struct.ucred**, %struct.ucred*** %9, align 8
  %177 = load %struct.ucred*, %struct.ucred** %176, align 8
  %178 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %179 = call i32 @CMSG_DATA(%struct.cmsghdr* %178)
  %180 = call i32 @memcpy(%struct.ucred* %177, i32 %179, i32 4)
  br label %185

181:                                              ; preds = %166, %160
  br label %182

182:                                              ; preds = %181
  %183 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %184 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %13, %struct.cmsghdr* %183)
  store %struct.cmsghdr* %184, %struct.cmsghdr** %14, align 8
  br label %157

185:                                              ; preds = %172, %157
  %186 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @free(i8* %187)
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %5, align 4
  br label %197

190:                                              ; preds = %84, %70
  %191 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @free(i8* %192)
  %194 = load i8**, i8*** %8, align 8
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @free(i8* %195)
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %190, %185, %146, %86
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @CMSG_SPACE(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @NL_DBG(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @nl_syserr2nlerr(i64) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @memcpy(%struct.ucred*, i32, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
