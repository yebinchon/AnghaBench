; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_process_trailers.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_process_trailers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }
%struct.process_trailer_options = type { i64, i32, i32 }
%struct.list_head = type { i32 }

@head = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@stdout = common dso_local global i32* null, align 8
@arg_head = common dso_local global i32 0, align 4
@trailers_tempfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not rename temporary file to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_trailers(i8* %0, %struct.process_trailer_options* %1, %struct.list_head* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.process_trailer_options*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.process_trailer_options* %1, %struct.process_trailer_options** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %10 = load i32, i32* @head, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %13 = load i32*, i32** @stdout, align 8
  store i32* %13, i32** %9, align 8
  %14 = call i32 (...) @ensure_configured()
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @read_input_file(%struct.strbuf* %7, i8* %15)
  %17 = load %struct.process_trailer_options*, %struct.process_trailer_options** %5, align 8
  %18 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i8*, i8** %4, align 8
  %23 = call i32* @create_in_place_tempfile(i8* %22)
  store i32* %23, i32** %9, align 8
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.process_trailer_options*, %struct.process_trailer_options** %5, align 8
  %29 = call i64 @process_input_file(i32* %25, i64 %27, i32* @head, %struct.process_trailer_options* %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.process_trailer_options*, %struct.process_trailer_options** %5, align 8
  %31 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @arg_head, align 4
  %36 = call i32 @LIST_HEAD(i32 %35)
  %37 = load %struct.list_head*, %struct.list_head** %6, align 8
  %38 = call i32 @process_command_line_args(i32* @arg_head, %struct.list_head* %37)
  %39 = call i32 @process_trailers_lists(i32* @head, i32* @arg_head)
  br label %40

40:                                               ; preds = %34, %24
  %41 = load i32*, i32** %9, align 8
  %42 = load %struct.process_trailer_options*, %struct.process_trailer_options** %5, align 8
  %43 = call i32 @print_all(i32* %41, i32* @head, %struct.process_trailer_options* %42)
  %44 = call i32 @free_all(i32* @head)
  %45 = load %struct.process_trailer_options*, %struct.process_trailer_options** %5, align 8
  %46 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %51, %52
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub i64 %55, %56
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @fwrite(i64 %53, i32 1, i64 %57, i32* %58)
  br label %60

60:                                               ; preds = %49, %40
  %61 = load %struct.process_trailer_options*, %struct.process_trailer_options** %5, align 8
  %62 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = call i64 @rename_tempfile(i32* @trailers_tempfile, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @die_errno(i32 %70, i8* %71)
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %60
  %75 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ensure_configured(...) #1

declare dso_local i32 @read_input_file(%struct.strbuf*, i8*) #1

declare dso_local i32* @create_in_place_tempfile(i8*) #1

declare dso_local i64 @process_input_file(i32*, i64, i32*, %struct.process_trailer_options*) #1

declare dso_local i32 @process_command_line_args(i32*, %struct.list_head*) #1

declare dso_local i32 @process_trailers_lists(i32*, i32*) #1

declare dso_local i32 @print_all(i32*, i32*, %struct.process_trailer_options*) #1

declare dso_local i32 @free_all(i32*) #1

declare dso_local i32 @fwrite(i64, i32, i64, i32*) #1

declare dso_local i64 @rename_tempfile(i32*, i8*) #1

declare dso_local i32 @die_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
