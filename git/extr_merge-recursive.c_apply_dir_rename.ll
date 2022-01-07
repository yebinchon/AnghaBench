; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_apply_dir_rename.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_apply_dir_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.dir_rename_entry = type { i8*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dir_rename_entry*, i8*)* @apply_dir_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @apply_dir_rename(%struct.dir_rename_entry* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dir_rename_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dir_rename_entry* %0, %struct.dir_rename_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %10 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %4, align 8
  %11 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %4, align 8
  %17 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %4, align 8
  %21 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %15
  %29 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %4, align 8
  %30 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %34, %35
  %37 = add nsw i32 %32, %36
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @strbuf_grow(%struct.strbuf* %6, i32 %39)
  %41 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %4, align 8
  %42 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %41, i32 0, i32 1
  %43 = call i32 @strbuf_addbuf(%struct.strbuf* %6, %struct.TYPE_2__* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* %47)
  %49 = call i8* @strbuf_detach(%struct.strbuf* %6, i32* null)
  store i8* %49, i8** %3, align 8
  br label %50

50:                                               ; preds = %28, %14
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.TYPE_2__*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
