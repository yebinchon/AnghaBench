; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart_pkt.c_git_pkt_buffer_wants.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart_pkt.c_git_pkt_buffer_wants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@pkt_want_prefix = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_pkt_buffer_wants(%struct.TYPE_8__** %0, i64 %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %25, i64 %26
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %11, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %38

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %10, align 8
  br label %20

38:                                               ; preds = %33, %20
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %39, i64 %40
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @buffer_want_with_caps(%struct.TYPE_8__* %42, %struct.TYPE_7__* %43, i32* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %99

48:                                               ; preds = %38
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %48, %4
  br label %52

52:                                               ; preds = %93, %51
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %96

56:                                               ; preds = %52
  %57 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %12, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %13, align 8
  %61 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %61, i64 %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %11, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  store i32 7, i32* %14, align 4
  br label %89

70:                                               ; preds = %56
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @git_oid_fmt(i8* %60, i32* %72)
  %74 = load i32*, i32** %9, align 8
  %75 = load i8*, i8** @pkt_want_prefix, align 8
  %76 = load i8*, i8** @pkt_want_prefix, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = call i32 @git_buf_put(i32* %74, i8* %75, i32 %77)
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %81 = call i32 @git_buf_put(i32* %79, i8* %60, i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @git_buf_putc(i32* %82, i8 signext 10)
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @git_buf_oom(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %70
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %89

88:                                               ; preds = %70
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %88, %87, %69
  %90 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %14, align 4
  switch i32 %91, label %101 [
    i32 0, label %92
    i32 7, label %93
    i32 1, label %99
  ]

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %10, align 8
  br label %52

96:                                               ; preds = %52
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @git_pkt_buffer_flush(i32* %97)
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %96, %89, %47
  %100 = load i32, i32* %5, align 4
  ret i32 %100

101:                                              ; preds = %89
  unreachable
}

declare dso_local i64 @buffer_want_with_caps(%struct.TYPE_8__*, %struct.TYPE_7__*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @git_oid_fmt(i8*, i32*) #1

declare dso_local i32 @git_buf_put(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @git_buf_putc(i32*, i8 signext) #1

declare dso_local i64 @git_buf_oom(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @git_pkt_buffer_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
