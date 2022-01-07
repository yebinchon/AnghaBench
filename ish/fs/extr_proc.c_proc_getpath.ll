; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_proc.c_proc_getpath.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_proc.c_proc_getpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.fd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.proc_entry }
%struct.proc_entry = type { %struct.TYPE_4__* }

@MAX_PATH = common dso_local global i32 0, align 4
@proc_root = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, i8*)* @proc_getpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_getpath(%struct.fd* %0, i8* %1) #0 {
  %3 = alloca %struct.fd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.proc_entry, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.fd* %0, %struct.fd** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8* %15, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %17, align 1
  %18 = load %struct.fd*, %struct.fd** %3, align 8
  %19 = getelementptr inbounds %struct.fd, %struct.fd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = bitcast %struct.proc_entry* %7 to i8*
  %22 = bitcast %struct.proc_entry* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  br label %23

23:                                               ; preds = %27, %2
  %24 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %7, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, @proc_root
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load i32, i32* @MAX_NAME, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %8, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %9, align 8
  %32 = call i32 @proc_entry_getname(%struct.proc_entry* %7, i8* %31)
  %33 = call i32 @strlen(i8* %31)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = sub i64 0, %36
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %5, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %6, align 8
  %43 = load i8*, i8** %5, align 8
  store i8 47, i8* %43, align 1
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @memcpy(i8* %45, i8* %31, i64 %46)
  %48 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %7, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %7, i32 0, i32 0
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %52, align 8
  %53 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %53)
  br label %23

54:                                               ; preds = %23
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  %59 = call i32 @memmove(i8* %55, i8* %56, i64 %58)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @proc_entry_getname(%struct.proc_entry*, i8*) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i32 @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
