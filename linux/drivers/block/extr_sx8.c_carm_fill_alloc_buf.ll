; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_fill_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_fill_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_host = type { i32 }
%struct.carm_msg_allocbuf = type { i32, %struct.TYPE_2__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@CARM_MSG_MISC = common dso_local global i32 0, align 4
@MISC_ALLOC_MEM = common dso_local global i32 0, align 4
@SGT_32BIT = common dso_local global i32 0, align 4
@PDC_SHM_SIZE = common dso_local global i32 0, align 4
@RMSG_Q_LEN = common dso_local global i32 0, align 4
@RBUF_LEN = common dso_local global i32 0, align 4
@CARM_Q_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carm_host*, i32, i8*)* @carm_fill_alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carm_fill_alloc_buf(%struct.carm_host* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.carm_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.carm_msg_allocbuf*, align 8
  store %struct.carm_host* %0, %struct.carm_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.carm_msg_allocbuf*
  store %struct.carm_msg_allocbuf* %9, %struct.carm_msg_allocbuf** %7, align 8
  %10 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %11 = call i32 @memset(%struct.carm_msg_allocbuf* %10, i32 0, i32 104)
  %12 = load i32, i32* @CARM_MSG_MISC, align 4
  %13 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %14 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %13, i32 0, i32 13
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @MISC_ALLOC_MEM, align 4
  %16 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %17 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @TAG_ENCODE(i32 %18)
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %22 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %21, i32 0, i32 11
  store i8* %20, i8** %22, align 8
  %23 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %24 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @SGT_32BIT, align 4
  %26 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %27 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 8
  %28 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %29 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PDC_SHM_SIZE, align 4
  %32 = ashr i32 %31, 1
  %33 = add nsw i32 %30, %32
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %36 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %35, i32 0, i32 9
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @PDC_SHM_SIZE, align 4
  %38 = ashr i32 %37, 1
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %41 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %43 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 16384
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %48 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %47, i32 0, i32 7
  store i8* %46, i8** %48, align 8
  %49 = call i8* @cpu_to_le32(i32 1024)
  %50 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %51 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %53 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %57 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @RMSG_Q_LEN, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %61 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %63 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RBUF_LEN, align 4
  %66 = add nsw i32 %64, %65
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %69 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @CARM_Q_LEN, align 4
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %73 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %75 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PDC_SHM_SIZE, align 4
  %78 = ashr i32 %77, 1
  %79 = add nsw i32 %76, %78
  %80 = call i8* @cpu_to_le32(i32 %79)
  %81 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %82 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i8* %80, i8** %85, align 8
  %86 = call i8* @cpu_to_le32(i32 65536)
  %87 = load %struct.carm_msg_allocbuf*, %struct.carm_msg_allocbuf** %7, align 8
  %88 = getelementptr inbounds %struct.carm_msg_allocbuf, %struct.carm_msg_allocbuf* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i8* %86, i8** %91, align 8
  ret i32 104
}

declare dso_local i32 @memset(%struct.carm_msg_allocbuf*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @TAG_ENCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
