; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_hack-coff.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_hack-coff.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.external_filehdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.external_scnhdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Usage: hack-coff coff-file\0A\00", align 1
@U802TOCMAGIC = common dso_local global i32 0, align 4
@U802WRMAGIC = common dso_local global i32 0, align 4
@U802ROMAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: not an xcoff file\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@AOUT_MAGIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"%s: write error\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%s: read error or file too short\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.external_filehdr, align 4
  %11 = alloca %struct.external_scnhdr, align 4
  %12 = alloca %struct.external_scnhdr, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @open(i8* %22, i32 2)
  store i32 %23, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @perror(i8* %28)
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = bitcast %struct.external_filehdr* %10 to %struct.external_scnhdr*
  %34 = call i32 @read(i32 %32, %struct.external_scnhdr* %33, i32 36)
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 36
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %153

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.external_filehdr, %struct.external_filehdr* %10, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @get_16be(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @U802TOCMAGIC, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @U802WRMAGIC, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @U802ROMAGIC, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %49, %45, %38
  %61 = getelementptr inbounds %struct.external_filehdr, %struct.external_filehdr* %10, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @get_16be(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @read(i32 %64, %struct.external_scnhdr* %11, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %153

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.external_filehdr, %struct.external_filehdr* %10, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @get_16be(i32 %72)
  store i32 %73, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %125, %70
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %128

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @read(i32 %79, %struct.external_scnhdr* %12, i32 36)
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %81, 36
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %153

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.external_scnhdr, %struct.external_scnhdr* %12, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @strcmp(i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.external_scnhdr, %struct.external_scnhdr* %11, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @put_16be(i32 %91, i32 %93)
  %95 = getelementptr inbounds %struct.external_scnhdr, %struct.external_scnhdr* %11, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @put_16be(i32 %96, i32 %98)
  br label %124

100:                                              ; preds = %84
  %101 = getelementptr inbounds %struct.external_scnhdr, %struct.external_scnhdr* %12, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @strcmp(i32 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.external_scnhdr, %struct.external_scnhdr* %11, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i32 @put_16be(i32 %107, i32 %109)
  br label %123

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.external_scnhdr, %struct.external_scnhdr* %12, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @strcmp(i32 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.external_scnhdr, %struct.external_scnhdr* %11, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  %121 = call i32 @put_16be(i32 %118, i32 %120)
  br label %122

122:                                              ; preds = %116, %111
  br label %123

123:                                              ; preds = %122, %105
  br label %124

124:                                              ; preds = %123, %89
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %74

128:                                              ; preds = %74
  %129 = getelementptr inbounds %struct.external_scnhdr, %struct.external_scnhdr* %11, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AOUT_MAGIC, align 4
  %132 = call i32 @put_16be(i32 %130, i32 %131)
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @lseek(i32 %133, i64 36, i32 0)
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %142, label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @write(i32 %137, %struct.external_scnhdr* %11, i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %136, %128
  %143 = load i32, i32* @stderr, align 4
  %144 = load i8**, i8*** %5, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %146)
  %148 = call i32 @exit(i32 1) #3
  unreachable

149:                                              ; preds = %136
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @close(i32 %150)
  %152 = call i32 @exit(i32 0) #3
  unreachable

153:                                              ; preds = %83, %69, %37
  %154 = load i32, i32* @stderr, align 4
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %157)
  %159 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @read(i32, %struct.external_scnhdr*, i32) #1

declare dso_local i32 @get_16be(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @put_16be(i32, i32) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @write(i32, %struct.external_scnhdr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
