; ModuleID = '/home/carl/AnghaBench/git/extr_pkt-line.c_packet_reader_read.c'
source_filename = "/home/carl/AnghaBench/git/extr_pkt-line.c_packet_reader_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.packet_reader = type { i32, i32*, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@PACKET_READ_NORMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @packet_reader_read(%struct.packet_reader* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.packet_reader*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca i32, align 4
  store %struct.packet_reader* %0, %struct.packet_reader** %3, align 8
  %6 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %8 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %7, i32 0, i32 11
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %13 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %12, i32 0, i32 11
  store i64 0, i64* %13, align 8
  %14 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %15 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %2, align 4
  br label %91

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %58
  %19 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %20 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %23 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %22, i32 0, i32 9
  %24 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %25 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %24, i32 0, i32 8
  %26 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %27 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %30 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %33 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %32, i32 0, i32 4
  %34 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %35 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @packet_read_with_status(i32 %21, i32* %23, i32* %25, i32* %28, i32 %31, i32* %33, i32 %36)
  %38 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %39 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %41 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %18
  br label %59

45:                                               ; preds = %18
  %46 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %47 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %50 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %53 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @demultiplex_sideband(i32 %48, i32* %51, i32 %54, i32 1, %struct.strbuf* %4, i32* %5)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %59

58:                                               ; preds = %45
  br label %18

59:                                               ; preds = %57, %44
  %60 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %61 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %68 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %73 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  br label %80

76:                                               ; preds = %66
  %77 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %78 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  br label %80

80:                                               ; preds = %76, %71
  %81 = phi i32* [ %75, %71 ], [ %79, %76 ]
  %82 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %83 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  br label %87

84:                                               ; preds = %59
  %85 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %86 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %84, %80
  %88 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %89 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %11
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @packet_read_with_status(i32, i32*, i32*, i32*, i32, i32*, i32) #2

declare dso_local i64 @demultiplex_sideband(i32, i32*, i32, i32, %struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
