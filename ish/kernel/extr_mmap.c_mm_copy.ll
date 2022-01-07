; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_mmap.c_mm_copy.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_mmap.c_mm_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@MEM_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mm* @mm_copy(%struct.mm* %0) #0 {
  %2 = alloca %struct.mm*, align 8
  %3 = alloca %struct.mm*, align 8
  %4 = alloca %struct.mm*, align 8
  store %struct.mm* %0, %struct.mm** %3, align 8
  %5 = call %struct.mm* @malloc(i32 12)
  store %struct.mm* %5, %struct.mm** %4, align 8
  %6 = load %struct.mm*, %struct.mm** %4, align 8
  %7 = icmp eq %struct.mm* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.mm* null, %struct.mm** %2, align 8
  br label %38

9:                                                ; preds = %1
  %10 = load %struct.mm*, %struct.mm** %4, align 8
  %11 = load %struct.mm*, %struct.mm** %3, align 8
  %12 = bitcast %struct.mm* %10 to i8*
  %13 = bitcast %struct.mm* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  %14 = load %struct.mm*, %struct.mm** %4, align 8
  %15 = getelementptr inbounds %struct.mm, %struct.mm* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.mm*, %struct.mm** %4, align 8
  %17 = getelementptr inbounds %struct.mm, %struct.mm* %16, i32 0, i32 1
  %18 = call i32 @mem_init(%struct.TYPE_4__* %17)
  %19 = load %struct.mm*, %struct.mm** %4, align 8
  %20 = getelementptr inbounds %struct.mm, %struct.mm* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fd_retain(i32 %21)
  %23 = load %struct.mm*, %struct.mm** %3, align 8
  %24 = getelementptr inbounds %struct.mm, %struct.mm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @read_wrlock(i32* %25)
  %27 = load %struct.mm*, %struct.mm** %3, align 8
  %28 = getelementptr inbounds %struct.mm, %struct.mm* %27, i32 0, i32 1
  %29 = load %struct.mm*, %struct.mm** %4, align 8
  %30 = getelementptr inbounds %struct.mm, %struct.mm* %29, i32 0, i32 1
  %31 = load i32, i32* @MEM_PAGES, align 4
  %32 = call i32 @pt_copy_on_write(%struct.TYPE_4__* %28, %struct.TYPE_4__* %30, i32 0, i32 %31)
  %33 = load %struct.mm*, %struct.mm** %3, align 8
  %34 = getelementptr inbounds %struct.mm, %struct.mm* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @read_wrunlock(i32* %35)
  %37 = load %struct.mm*, %struct.mm** %4, align 8
  store %struct.mm* %37, %struct.mm** %2, align 8
  br label %38

38:                                               ; preds = %9, %8
  %39 = load %struct.mm*, %struct.mm** %2, align 8
  ret %struct.mm* %39
}

declare dso_local %struct.mm* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mem_init(%struct.TYPE_4__*) #1

declare dso_local i32 @fd_retain(i32) #1

declare dso_local i32 @read_wrlock(i32*) #1

declare dso_local i32 @pt_copy_on_write(%struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @read_wrunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
