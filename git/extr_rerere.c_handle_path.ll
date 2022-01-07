; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_handle_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_handle_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.TYPE_2__ = type { i32 (i8*, i32*)*, i32 (i32*)* }
%struct.rerere_io = type { i32 (%struct.strbuf*, %struct.rerere_io*)* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rerere_io*, i32)* @handle_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_path(i8* %0, %struct.rerere_io* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rerere_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.rerere_io* %1, %struct.rerere_io** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (i32*)*, i32 (i32*)** %17, align 8
  %19 = call i32 %18(i32* %7)
  br label %20

20:                                               ; preds = %15, %3
  br label %21

21:                                               ; preds = %61, %20
  %22 = load %struct.rerere_io*, %struct.rerere_io** %5, align 8
  %23 = getelementptr inbounds %struct.rerere_io, %struct.rerere_io* %22, i32 0, i32 0
  %24 = load i32 (%struct.strbuf*, %struct.rerere_io*)*, i32 (%struct.strbuf*, %struct.rerere_io*)** %23, align 8
  %25 = load %struct.rerere_io*, %struct.rerere_io** %5, align 8
  %26 = call i32 %24(%struct.strbuf* %8, %struct.rerere_io* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %62

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @is_cmarker(i32 %31, i8 signext 60, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.rerere_io*, %struct.rerere_io** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %40
  %43 = phi i32* [ %7, %40 ], [ null, %41 ]
  %44 = call i32 @handle_conflict(%struct.strbuf* %9, %struct.rerere_io* %36, i32 %37, i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %62

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rerere_io*, %struct.rerere_io** %5, align 8
  %54 = call i32 @rerere_io_putmem(i32 %50, i32 %52, %struct.rerere_io* %53)
  %55 = call i32 @strbuf_reset(%struct.strbuf* %9)
  br label %61

56:                                               ; preds = %29
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rerere_io*, %struct.rerere_io** %5, align 8
  %60 = call i32 @rerere_io_putstr(i32 %58, %struct.rerere_io* %59)
  br label %61

61:                                               ; preds = %56, %48
  br label %21

62:                                               ; preds = %47, %21
  %63 = call i32 @strbuf_release(%struct.strbuf* %8)
  %64 = call i32 @strbuf_release(%struct.strbuf* %9)
  %65 = load i8*, i8** %4, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %69, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 %70(i8* %71, i32* %7)
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %10, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_cmarker(i32, i8 signext, i32) #2

declare dso_local i32 @handle_conflict(%struct.strbuf*, %struct.rerere_io*, i32, i32*) #2

declare dso_local i32 @rerere_io_putmem(i32, i32, %struct.rerere_io*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @rerere_io_putstr(i32, %struct.rerere_io*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
