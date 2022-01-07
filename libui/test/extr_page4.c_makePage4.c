
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiSpinbox ;
typedef int uiSlider ;
typedef int uiButton ;
typedef int uiBox ;


 int appendCBRB ;
 int * cbox ;
 int * editable ;
 int * newHorizontalBox () ;
 int * newVerticalBox () ;
 int onCBChanged ;
 int onECBChanged ;
 int onRBSelected ;
 int onSliderChanged ;
 int onSpinboxChanged ;
 int * pbar ;
 int * rb ;
 int selectNone ;
 int selectSecond ;
 int setSliderTooHigh ;
 int setSliderTooLow ;
 int setSpinboxTooHigh ;
 int setSpinboxTooLow ;
 int * slider ;
 int * spinbox ;
 int uiBoxAppend (int *,int ,int ) ;
 int uiButtonOnClicked (int *,int ,int *) ;
 int uiComboboxAppend (int *,char*) ;
 int uiComboboxOnSelected (int *,int ,char*) ;
 int uiControl (int *) ;
 int uiEditableComboboxAppend (int *,char*) ;
 int uiEditableComboboxOnChanged (int *,int ,char*) ;
 int * uiNewButton (char*) ;
 int * uiNewCombobox () ;
 int * uiNewDatePicker () ;
 int * uiNewDateTimePicker () ;
 int * uiNewEditableCombobox () ;
 int * uiNewHorizontalSeparator () ;
 int * uiNewProgressBar () ;
 int * uiNewRadioButtons () ;
 int * uiNewSlider (int,int) ;
 int * uiNewSpinbox (int,int) ;
 int * uiNewTimePicker () ;
 int uiRadioButtonsAppend (int *,char*) ;
 int uiRadioButtonsOnSelected (int *,int ,int *) ;
 int uiSliderOnChanged (int *,int ,int *) ;
 int uiSpinboxOnChanged (int *,int ,int *) ;

uiBox *makePage4(void)
{
 uiBox *page4;
 uiBox *hbox;
 uiSpinbox *xsb;
 uiButton *b;
 uiSlider *xsl;

 page4 = newVerticalBox();

 spinbox = uiNewSpinbox(0, 100);
 uiSpinboxOnChanged(spinbox, onSpinboxChanged, ((void*)0));
 uiBoxAppend(page4, uiControl(spinbox), 0);

 slider = uiNewSlider(0, 100);
 uiSliderOnChanged(slider, onSliderChanged, ((void*)0));
 uiBoxAppend(page4, uiControl(slider), 0);

 pbar = uiNewProgressBar();
 uiBoxAppend(page4, uiControl(pbar), 0);

 uiBoxAppend(page4, uiControl(uiNewHorizontalSeparator()), 0);

 hbox = newHorizontalBox();
 xsb = uiNewSpinbox(-40, 40);
 uiBoxAppend(hbox, uiControl(xsb), 0);
 b = uiNewButton("Bad Low");
 uiButtonOnClicked(b, setSpinboxTooLow, xsb);
 uiBoxAppend(hbox, uiControl(b), 0);
 b = uiNewButton("Bad High");
 uiButtonOnClicked(b, setSpinboxTooHigh, xsb);
 uiBoxAppend(hbox, uiControl(b), 0);
 uiBoxAppend(page4, uiControl(hbox), 0);

 hbox = newHorizontalBox();
 xsl = uiNewSlider(-40, 40);
 uiBoxAppend(hbox, uiControl(xsl), 0);
 b = uiNewButton("Bad Low");
 uiButtonOnClicked(b, setSliderTooLow, xsl);
 uiBoxAppend(hbox, uiControl(b), 0);
 b = uiNewButton("Bad High");
 uiButtonOnClicked(b, setSliderTooHigh, xsl);
 uiBoxAppend(hbox, uiControl(b), 0);
 uiBoxAppend(page4, uiControl(hbox), 0);

 uiBoxAppend(page4, uiControl(uiNewHorizontalSeparator()), 0);

 cbox = uiNewCombobox();
 uiComboboxAppend(cbox, "Item 1");
 uiComboboxAppend(cbox, "Item 2");
 uiComboboxAppend(cbox, "Item 3");
 uiComboboxOnSelected(cbox, onCBChanged, "noneditable");
 uiBoxAppend(page4, uiControl(cbox), 0);

 editable = uiNewEditableCombobox();
 uiEditableComboboxAppend(editable, "Editable Item 1");
 uiEditableComboboxAppend(editable, "Editable Item 2");
 uiEditableComboboxAppend(editable, "Editable Item 3");
 uiEditableComboboxOnChanged(editable, onECBChanged, "editable");
 uiBoxAppend(page4, uiControl(editable), 0);

 rb = uiNewRadioButtons();
 uiRadioButtonsAppend(rb, "Item 1");
 uiRadioButtonsAppend(rb, "Item 2");
 uiRadioButtonsAppend(rb, "Item 3");
 uiRadioButtonsOnSelected(rb, onRBSelected, ((void*)0));
 uiBoxAppend(page4, uiControl(rb), 0);

 hbox = newHorizontalBox();
 b = uiNewButton("Append");
 uiButtonOnClicked(b, appendCBRB, ((void*)0));
 uiBoxAppend(hbox, uiControl(b), 0);
 b = uiNewButton("Second");
 uiButtonOnClicked(b, selectSecond, ((void*)0));
 uiBoxAppend(hbox, uiControl(b), 0);
 b = uiNewButton("None");
 uiButtonOnClicked(b, selectNone, ((void*)0));
 uiBoxAppend(hbox, uiControl(b), 0);
 uiBoxAppend(page4, uiControl(hbox), 0);

 uiBoxAppend(page4, uiControl(uiNewHorizontalSeparator()), 0);

 uiBoxAppend(page4, uiControl(uiNewDateTimePicker()), 0);
 uiBoxAppend(page4, uiControl(uiNewDatePicker()), 0);
 uiBoxAppend(page4, uiControl(uiNewTimePicker()), 0);

 return page4;
}
