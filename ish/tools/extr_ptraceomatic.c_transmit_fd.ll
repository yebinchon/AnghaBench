; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_ptraceomatic.c_transmit_fd.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_ptraceomatic.c_transmit_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i8*, i32 }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.user_regs_struct = type { i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SCM_RIGHTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sendmsg insanity\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"remote recvmsg insanity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @transmit_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transmit_fd(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.msghdr, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cmsghdr*, align 8
  %14 = alloca %struct.user_regs_struct, align 8
  %15 = alloca %struct.user_regs_struct, align 8
  %16 = alloca i32, align 4
  %17 = alloca [16 x i8], align 16
  %18 = alloca [7 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca [32 x i8], align 16
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.TYPE_2__* @f_get(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = bitcast %struct.msghdr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 16, i1 false)
  %27 = call i32 @CMSG_SPACE(i32 4)
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %11, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %31 = trunc i64 %28 to i32
  %32 = call i32 @memset(i8* %30, i32 0, i32 %31)
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = trunc i64 %28 to i32
  %35 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %10)
  store %struct.cmsghdr* %36, %struct.cmsghdr** %13, align 8
  %37 = load i32, i32* @SOL_SOCKET, align 4
  %38 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %39 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @SCM_RIGHTS, align 4
  %41 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %42 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = call i32 @CMSG_LEN(i32 4)
  %44 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %45 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %48 = call i64 @CMSG_DATA(%struct.cmsghdr* %47)
  %49 = inttoptr i64 %48 to i32*
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @sendmsg(i32 %50, %struct.msghdr* %10, i32 0)
  %52 = call i32 @trycall(i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @getregs(i32 %53, %struct.user_regs_struct* %14)
  %55 = bitcast %struct.user_regs_struct* %15 to i8*
  %56 = bitcast %struct.user_regs_struct* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  %57 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 16
  store i32 %59, i32* %57, align 8
  %60 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %5, align 4
  %63 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %66 = call i32 (i32, i32, ...) @pt_readn(i32 %62, i32 %64, i8* %65, i64 16)
  %67 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 32
  store i32 %69, i32* %67, align 8
  %70 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 0, i32* %71, align 4
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 0, i32* %73, align 4
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 20, i32* %76, align 4
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %5, align 4
  %81 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %84 = call i32 (i32, i32, ...) @pt_readn(i32 %80, i32 %82, i8* %83, i64 32)
  %85 = load i32, i32* %5, align 4
  %86 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i32, ...) @pt_writen(i32 %85, i32 %87, [7 x i32]* %18, i64 28)
  %89 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 1
  store i32 372, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 2
  store i32 %90, i32* %91, align 8
  %92 = load i32, i32* %19, align 4
  %93 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 3
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 4
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @setregs(i32 %95, %struct.user_regs_struct* %15)
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @step(i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @getregs(i32 %99, %struct.user_regs_struct* %15)
  %101 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp sge i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 12
  %109 = call i32 (i32, i32, ...) @pt_readn(i32 %106, i32 %108, i32* %21, i64 4)
  br label %113

110:                                              ; preds = %4
  %111 = getelementptr inbounds %struct.user_regs_struct, %struct.user_regs_struct* %15, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %21, align 4
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %16, align 4
  %116 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %117 = call i32 (i32, i32, ...) @pt_writen(i32 %114, i32 %115, i8* %116, i64 16)
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %19, align 4
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %121 = call i32 (i32, i32, ...) @pt_writen(i32 %118, i32 %119, i8* %120, i64 32)
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @setregs(i32 %122, %struct.user_regs_struct* %15)
  %124 = load i32, i32* %21, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %113
  %127 = load i32, i32* %21, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* @errno, align 4
  %129 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %130 = call i32 @exit(i32 1) #5
  unreachable

131:                                              ; preds = %113
  %132 = load i32, i32* %21, align 4
  %133 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %133)
  ret i32 %132
}

declare dso_local %struct.TYPE_2__* @f_get(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @CMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @trycall(i32, i8*) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @getregs(i32, %struct.user_regs_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pt_readn(i32, i32, ...) #1

declare dso_local i32 @pt_writen(i32, i32, ...) #1

declare dso_local i32 @setregs(i32, %struct.user_regs_struct*) #1

declare dso_local i32 @step(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
