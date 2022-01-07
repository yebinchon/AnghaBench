; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-line-buffer.c_handle_command.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-line-buffer.c_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.line_buffer = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"binary \00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"copy \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"skip \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"unrecognized command: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.line_buffer*)* @handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_command(i8* %0, i8* %1, %struct.line_buffer* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.line_buffer*, align 8
  %7 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.line_buffer* %2, %struct.line_buffer** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @starts_with(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %13 = call i32 @strbuf_addch(%struct.strbuf* %7, i8 signext 62)
  %14 = load %struct.line_buffer*, %struct.line_buffer** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strtouint32(i8* %15)
  %17 = call i32 @buffer_read_binary(%struct.line_buffer* %14, %struct.strbuf* %7, i32 %16)
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @fwrite(i32 %19, i32 1, i32 %21, i32 %22)
  %24 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %48

25:                                               ; preds = %3
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @starts_with(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.line_buffer*, %struct.line_buffer** %6, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strtouint32(i8* %31)
  %33 = call i32 @buffer_copy_bytes(%struct.line_buffer* %30, i32 %32)
  br label %47

34:                                               ; preds = %25
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @starts_with(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.line_buffer*, %struct.line_buffer** %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strtouint32(i8* %40)
  %42 = call i32 @buffer_skip_bytes(%struct.line_buffer* %39, i32 %41)
  br label %46

43:                                               ; preds = %34
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %29
  br label %48

48:                                               ; preds = %47, %11
  ret void
}

declare dso_local i64 @starts_with(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @buffer_read_binary(%struct.line_buffer*, %struct.strbuf*, i32) #1

declare dso_local i32 @strtouint32(i8*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @buffer_copy_bytes(%struct.line_buffer*, i32) #1

declare dso_local i32 @buffer_skip_bytes(%struct.line_buffer*, i32) #1

declare dso_local i32 @die(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
