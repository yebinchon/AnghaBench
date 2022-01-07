; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_proc.c_proc_refresh_data.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_proc.c_proc_refresh_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.proc_entry }
%struct.TYPE_6__ = type { i32, i64, i32* }
%struct.proc_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.proc_entry*, %struct.TYPE_6__*)* }

@_EISDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*)* @proc_refresh_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_refresh_data(%struct.fd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc_entry, align 8
  %6 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %3, align 8
  %7 = load %struct.fd*, %struct.fd** %3, align 8
  %8 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = call i32 @proc_entry_mode(%struct.proc_entry* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @S_ISDIR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @_EISDIR, align 4
  store i32 %15, i32* %2, align 4
  br label %64

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @S_ISREG(i32 %17)
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.fd*, %struct.fd** %3, align 8
  %21 = getelementptr inbounds %struct.fd, %struct.fd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %16
  %27 = load %struct.fd*, %struct.fd** %3, align 8
  %28 = getelementptr inbounds %struct.fd, %struct.fd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 4096, i32* %30, align 8
  %31 = load %struct.fd*, %struct.fd** %3, align 8
  %32 = getelementptr inbounds %struct.fd, %struct.fd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @malloc(i32 %35)
  %37 = load %struct.fd*, %struct.fd** %3, align 8
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32* %36, i32** %40, align 8
  br label %41

41:                                               ; preds = %26, %16
  %42 = load %struct.fd*, %struct.fd** %3, align 8
  %43 = getelementptr inbounds %struct.fd, %struct.fd* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.fd*, %struct.fd** %3, align 8
  %47 = getelementptr inbounds %struct.fd, %struct.fd* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = bitcast %struct.proc_entry* %5 to i8*
  %50 = bitcast %struct.proc_entry* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  %51 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %5, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.proc_entry*, %struct.TYPE_6__*)*, i32 (%struct.proc_entry*, %struct.TYPE_6__*)** %53, align 8
  %55 = load %struct.fd*, %struct.fd** %3, align 8
  %56 = getelementptr inbounds %struct.fd, %struct.fd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 %54(%struct.proc_entry* %5, %struct.TYPE_6__* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %41
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %61, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @proc_entry_mode(%struct.proc_entry*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
