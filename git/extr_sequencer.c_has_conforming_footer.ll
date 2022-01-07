; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_has_conforming_footer.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_has_conforming_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_trailer_options = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.trailer_info = type { i64, i64, i64, i32* }

@PROCESS_TRAILER_OPTIONS_INIT = common dso_local global %struct.process_trailer_options zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.strbuf*, i64)* @has_conforming_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_conforming_footer(%struct.strbuf* %0, %struct.strbuf* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.process_trailer_options, align 4
  %9 = alloca %struct.trailer_info, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = bitcast %struct.process_trailer_options* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.process_trailer_options* @PROCESS_TRAILER_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %8, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @trailer_info_get(%struct.trailer_info* %9, i32 %17, %struct.process_trailer_options* %8)
  %19 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %9, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %9, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

25:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %26

26:                                               ; preds = %57, %25
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %9, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %33 = icmp ne %struct.strbuf* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %9, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strncmp(i32 %39, i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %9, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %51, 1
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %34, %31
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %26

60:                                               ; preds = %26
  %61 = call i32 @trailer_info_release(%struct.trailer_info* %9)
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 3, i32* %4, align 4
  br label %70

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 2, i32* %4, align 4
  br label %70

69:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %68, %64, %24
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trailer_info_get(%struct.trailer_info*, i32, %struct.process_trailer_options*) #2

declare dso_local i32 @strncmp(i32, i32, i32) #2

declare dso_local i32 @trailer_info_release(%struct.trailer_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
