; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_commit_rewrite_person.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_commit_rewrite_person.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.string_list = type { i32 }
%struct.ident_split = type { i8*, i8*, i8*, i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"%.*s <%.*s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i8*, %struct.string_list*)* @commit_rewrite_person to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_rewrite_person(%struct.strbuf* %0, i8* %1, %struct.string_list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ident_split, align 8
  %16 = alloca %struct.strbuf, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.string_list* %2, %struct.string_list** %7, align 8
  %17 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @strstr(i32 %19, i8* %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %103

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 10)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %103

36:                                               ; preds = %25
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  store i64 %41, i64* %10, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @split_ident_line(%struct.ident_split* %15, i8* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %103

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %15, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %14, align 8
  %50 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %15, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %15, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %51 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  store i64 %56, i64* %12, align 8
  %57 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %15, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %13, align 8
  %59 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %15, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %15, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = ptrtoint i8* %60 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  store i64 %65, i64* %11, align 8
  %66 = load %struct.string_list*, %struct.string_list** %7, align 8
  %67 = call i64 @map_user(%struct.string_list* %66, i8** %14, i64* %12, i8** %13, i64* %11)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %47
  %70 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %71 = load i64, i64* %11, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i8*, i8** %13, align 8
  %74 = load i64, i64* %12, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @strbuf_addf(%struct.strbuf* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %72, i8* %73, i32 %75, i8* %76)
  %78 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %79 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %15, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i8, i8* %80, i64 %85
  %87 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %15, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %15, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = ptrtoint i8* %88 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = add nsw i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @strbuf_splice(%struct.strbuf* %78, i8* %86, i32 %95, i32 %97, i32 %99)
  %101 = call i32 @strbuf_release(%struct.strbuf* %16)
  store i32 1, i32* %4, align 4
  br label %103

102:                                              ; preds = %47
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %69, %46, %35, %24
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i8* @strstr(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @split_ident_line(%struct.ident_split*, i8*, i64) #1

declare dso_local i64 @map_user(%struct.string_list*, i8**, i64*, i8**, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @strbuf_splice(%struct.strbuf*, i8*, i32, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
