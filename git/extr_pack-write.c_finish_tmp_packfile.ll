; ModuleID = '/home/carl/AnghaBench/git/extr_pack-write.c_finish_tmp_packfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-write.c_finish_tmp_packfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.pack_idx_entry = type { i32 }
%struct.pack_idx_option = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"unable to make temporary pack file readable\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"unable to make temporary index file readable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s.pack\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"unable to rename temporary pack file\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s.idx\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"unable to rename temporary index file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finish_tmp_packfile(%struct.strbuf* %0, i8* %1, %struct.pack_idx_entry** %2, i32 %3, %struct.pack_idx_option* %4, i8* %5) #0 {
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pack_idx_entry**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pack_idx_option*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.pack_idx_entry** %2, %struct.pack_idx_entry*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.pack_idx_option* %4, %struct.pack_idx_option** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @adjust_shared_perm(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = call i32 @die_errno(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %6
  %24 = load %struct.pack_idx_entry**, %struct.pack_idx_entry*** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.pack_idx_option*, %struct.pack_idx_option** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i8* @write_idx_file(i32* null, %struct.pack_idx_entry** %24, i32 %25, %struct.pack_idx_option* %26, i8* %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i64 @adjust_shared_perm(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 @die_errno(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %23
  %35 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @hash_to_hex(i8* %36)
  %38 = call i32 @strbuf_addf(%struct.strbuf* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @rename(i8* %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = call i32 @die_errno(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %34
  %48 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @strbuf_setlen(%struct.strbuf* %48, i32 %49)
  %51 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @hash_to_hex(i8* %52)
  %54 = call i32 @strbuf_addf(%struct.strbuf* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load i8*, i8** %13, align 8
  %56 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @rename(i8* %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = call i32 @die_errno(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %47
  %64 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @strbuf_setlen(%struct.strbuf* %64, i32 %65)
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 @free(i8* %67)
  ret void
}

declare dso_local i64 @adjust_shared_perm(i8*) #1

declare dso_local i32 @die_errno(i8*) #1

declare dso_local i8* @write_idx_file(i32*, %struct.pack_idx_entry**, i32, %struct.pack_idx_option*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @hash_to_hex(i8*) #1

declare dso_local i64 @rename(i8*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
