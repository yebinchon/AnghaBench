; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_process_minifeed_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_process_minifeed_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_add_message = type { i32, i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@I = common dso_local global i64* null, align 8
@st_user_id = common dso_local global i64 0, align 8
@list_id = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@st_item_text = common dso_local global i64 0, align 8
@S = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@st_created = common dso_local global i64 0, align 8
@LEV_TX_ADD_MESSAGE_MF = common dso_local global i64 0, align 8
@TXFS_SMS = common dso_local global i64 0, align 8
@LEV_TX_ADD_MESSAGE = common dso_local global i64 0, align 8
@st_id = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_minifeed_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lev_add_message*, align 8
  store i32 0, i32* %3, align 4
  %7 = load i64*, i64** @I, align 8
  %8 = load i64, i64* @st_user_id, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* @list_id, align 8
  %11 = load i64, i64* @list_id, align 8
  %12 = call i64 @conv_uid(i64 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i64, i64* @list_id, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %0
  br label %172

18:                                               ; preds = %14
  %19 = load i32*, i32** @L, align 8
  %20 = load i64, i64* @st_item_text, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i8**, i8*** @S, align 8
  %26 = load i64, i64* @st_item_text, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = load i32*, i32** @L, align 8
  %33 = load i64, i64* @st_item_text, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 0, i32* %34, align 4
  %35 = load i8**, i8*** @S, align 8
  %36 = load i64, i64* @st_item_text, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %31, %24, %18
  %41 = load i32*, i32** @L, align 8
  %42 = load i64, i64* @st_item_text, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 2
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i64*, i64** @I, align 8
  %48 = load i64, i64* @st_created, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %172

53:                                               ; preds = %46, %40
  %54 = load i8**, i8*** @S, align 8
  %55 = load i64, i64* @st_item_text, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 32
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  %63 = load i32*, i32** @L, align 8
  %64 = load i64, i64* @st_item_text, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 88, %67
  %69 = add i64 %68, 1
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %69, %71
  %73 = trunc i64 %72 to i32
  %74 = call %struct.lev_add_message* @write_alloc(i32 %73)
  store %struct.lev_add_message* %74, %struct.lev_add_message** %6, align 8
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %53
  %78 = load i64, i64* @LEV_TX_ADD_MESSAGE_MF, align 8
  %79 = load i64, i64* @TXFS_SMS, align 8
  %80 = add nsw i64 %78, %79
  br label %83

81:                                               ; preds = %53
  %82 = load i64, i64* @LEV_TX_ADD_MESSAGE, align 8
  br label %83

83:                                               ; preds = %81, %77
  %84 = phi i64 [ %80, %77 ], [ %82, %81 ]
  %85 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %86 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %85, i32 0, i32 11
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* @list_id, align 8
  %88 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %89 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %88, i32 0, i32 10
  store i64 %87, i64* %89, align 8
  %90 = load i64*, i64** @I, align 8
  %91 = load i64, i64* @st_id, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %95 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %94, i32 0, i32 9
  store i64 %93, i64* %95, align 8
  %96 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %97 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %96, i32 0, i32 0
  store i32 2000000000, i32* %97, align 8
  %98 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %99 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %98, i32 0, i32 8
  store i64 0, i64* %99, align 8
  %100 = load i64*, i64** @I, align 8
  %101 = load i64, i64* @st_created, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %105 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %104, i32 0, i32 7
  store i64 %103, i64* %105, align 8
  %106 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %107 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %106, i32 0, i32 6
  store i64 0, i64* %107, align 8
  %108 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %109 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %108, i32 0, i32 5
  store i64 0, i64* %109, align 8
  %110 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %111 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %110, i32 0, i32 4
  store i64 0, i64* %111, align 8
  %112 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %113 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  %114 = load i32*, i32** @L, align 8
  %115 = load i64, i64* @st_item_text, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %3, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %2, align 4
  %120 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %121 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %123 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %4, align 8
  %125 = load i8**, i8*** @S, align 8
  %126 = load i64, i64* @st_item_text, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8* %131, i8** %5, align 8
  store i32 0, i32* %1, align 4
  br label %132

132:                                              ; preds = %164, %83
  %133 = load i32, i32* %1, align 4
  %134 = load i32, i32* %2, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %167

136:                                              ; preds = %132
  %137 = load i8*, i8** %5, align 8
  %138 = load i32, i32* %1, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp slt i32 %142, 32
  br i1 %143, label %144, label %155

144:                                              ; preds = %136
  %145 = load i8*, i8** %5, align 8
  %146 = load i32, i32* %1, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 9
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %4, align 8
  store i8 32, i8* %153, align 1
  br label %163

155:                                              ; preds = %144, %136
  %156 = load i8*, i8** %5, align 8
  %157 = load i32, i32* %1, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = load i8*, i8** %4, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %4, align 8
  store i8 %160, i8* %161, align 1
  br label %163

163:                                              ; preds = %155, %152
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %1, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %1, align 4
  br label %132

167:                                              ; preds = %132
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %4, align 8
  store i8 0, i8* %168, align 1
  %170 = load i32, i32* @adj_rec, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @adj_rec, align 4
  br label %172

172:                                              ; preds = %167, %52, %17
  ret void
}

declare dso_local i64 @conv_uid(i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.lev_add_message* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
